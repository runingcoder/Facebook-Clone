from http.client import NO_CONTENT
from collections import OrderedDict
import json
# abandoning cookies for now.(Because I dont know how to update the cookies when I get new access token
# when I hit the refresh button, I need to update the cookies with the new access token)
from django.db.models import Q
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework.decorators import api_view, permission_classes

from rest_framework.permissions import IsAuthenticated
from django.views.decorators.csrf import csrf_exempt
from rest_framework.renderers import JSONRenderer, TemplateHTMLRenderer
from django.dispatch import receiver
from rest_framework_simplejwt.tokens import RefreshToken
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.utils.decorators import method_decorator
from django.middleware import csrf
from django.http import Http404
from django.conf import settings
from django.shortcuts import redirect, render
from rest_framework.response import Response
from django.contrib.auth import authenticate
from rest_framework import viewsets
from rest_framework import status
from rest_framework import generics
from django.contrib.admin.views.decorators import staff_member_required
from django.http import HttpResponse
from .serializers import *
from .models import *

from rest_framework.views import APIView
from .forms import *
from django.contrib import messages
from rest_framework.permissions import IsAuthenticated
from django.conf import settings
from django.contrib.auth import get_user_model

User = get_user_model()


@api_view(['GET'])
@permission_classes([IsAuthenticated])
# that persmission is only there to check if any bearer authentication credentials were provided or not.
def notes(request):
    user = request.user
    notes = user.notes_set.all()
    # notes = Notes.objects.all()
    serializer = NotesSerializer(notes, many=True)
    return Response(serializer.data)


@api_view(['GET'])
@permission_classes([IsAuthenticated])
def getMyPosts(request):
    user_id = request.user.id
    posts = Post.objects.filter(creator=user_id)
    serializer = PostSerializer(posts, many=True)
    return Response(serializer.data)


@api_view(['PUT'])
@permission_classes([IsAuthenticated])
def putLike(request, pk):
    likes = request.data.get('like')
    post = Post.objects.filter(id=pk).exists()
    if not post:
        return Response({"message": "This post is not found."},
                        status=status.HTTP_404_NOT_FOUND)
    postLike = Post.objects.get(id=pk)
    postLike.like = likes
    serializer = PostPUTSerializer(postLike)
    postLike.save()
    return Response(data=serializer.data, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes([IsAuthenticated])
def getuserByName(request, pk):

    user = User.objects.get(username=pk)

    serializer = userSerializer(user, many=False)
    return Response(serializer.data)


@api_view(['GET'])
@permission_classes([IsAuthenticated])
def getSpecificUserPost(request, pk):
    # import pdb
    # pdb.set_trace()
    user = User.objects.filter(username=pk).exists()
    if user:

        user_id = User.objects.get(username=pk).id
        posts = Post.objects.filter(creator=user_id)

        serializer = PostSerializer(posts, many=True)
        return Response(serializer.data)
    else:
        return Response({"message": "That username is not valid"},
                        status=status.HTTP_404_NOT_FOUND)


class UserViewTime(APIView):
    permission_classes = [IsAuthenticated]

    def get_user(self, pk):
        try:
            return User.objects.get(pk=pk)
        except User.DoesNotExist:
            raise Http404

    def get(self, request, parameter=None):
        if parameter is None:
            items = User.objects.all()
            stat = True
            serializer = userSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
        else:
            item = self.get_user(parameter)
            serializer = userSerializer(item)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )


def get_tokens_for_user(user):
    refresh = RefreshToken.for_user(user)

    return {
        'refresh': str(refresh),
        'access': str(refresh.access_token),
    }


class MongoIntegratedBackend(APIView):
    permission_classes = [IsAuthenticated]

    def get_backend(self, pk):
        try:
            return Hero.objects.get(pk=pk)
        except Hero.DoesNotExist:
            raise Http404

    def get_backend_id(self, pk):
        try:
            return Hero.objects.get(id=pk)
        except Hero.DoesNotExist:
            raise Http404

    # @method_decorator(auth_required())
    def get(self, parameter=None):
        if parameter is None:
            items = Hero.objects.all()
            stat = True
            serializer = MongoIntegratedBackendSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
        else:
            item = self.get_backend_id(parameter)
            serializer = MongoIntegratedBackendSerializer(item)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )

    # @method_decorator(auth_required())
    def post(self, request):
        data = request.data

        tender_notice = MongoIntegratedBackendPOSTPUTSerializer(
            data=request.data)
        # import pdb
        # pdb.set_trace()
        if not tender_notice.is_valid():
            return Response(status=status.HTTP_204_NO_CONTENT,
                            data=tender_notice.errors)
        tender_notice.is_valid(raise_exception=True)
        tender_notice.save()
        return Response(data=tender_notice.data, status=status.HTTP_200_OK)

    def put(self, request, parameter=0, format=None):

        hero = self.get_backend_id(parameter)

        serializer = MongoIntegratedBackendPOSTPUTSerializer(hero,
                                                             data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(data=serializer.data, status=status.HTTP_200_OK)

    def delete(self, request, parameter=0):

        if Hero.objects.filter(id=parameter).exists():
            hero = self.get_backend_id(parameter)
            hero.delete()
            return JsonResponse({'message': "Succesfully deleted"})

        else:
            return JsonResponse({'message': "This hero not found"})


class RegisterView(APIView):

    # @method_decorator(check_auth())
    def post(self, request):
        serializer = UserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        passwordToCheck = request.data['password']
        passwordToCheck2 = request.data['re_password']
        if passwordToCheck != passwordToCheck2:
            return Response({"message": "  Passwords do not match  "},
                            status=status.HTTP_405_METHOD_NOT_ALLOWED)
        serializer.save()
        role = request.data.get("isAdmin")
        user_id = User.objects.last()
        if role == 'true':
            role_id = Role.objects.filter(name='Admin').first()
            if role_id is None:
                return Response({"message": "admin role is not available"},
                                status=status.HTTP_204_NO_CONTENT)
            UserRole.objects.create(user=user_id, role=role_id)
        else:
            role_id = Role.objects.filter(name='normal user').first()
            if role_id is None:
                return Response(
                    {"message": "Normal user role is not available"},
                    status=status.HTTP_204_NO_CONTENT)
            UserRole.objects.create(user=user_id, role=role_id)
        return JsonResponse(
            {
                "message": "Successfully registered!",
                "data": serializer.data,
            },
            status=status.HTTP_200_OK)


class LoginView(APIView):

    def post(self, request, format=None):
        data = request.data
        response = Response()
        email = data.get('email', None)
        if not User.objects.filter(email=email).exists():
            return Response({"message": "Email does not exist"},
                            status=status.HTTP_202_ACCEPTED)
        else:
            username = User.objects.get(email=email).username
            # username = data.get('username', None)
            password = data.get('password', None)
            user = authenticate(request, username=username, password=password)
            if user is not None:
                if user.is_active:
                    data = get_tokens_for_user(user)
                    role = Role.objects.filter(id=UserRole.objects.filter(
                        user=user).first().role.id).first().name
                    csrf.get_token(request)
                    response.data = {
                        "message": "Login successfully",
                        "data": data,
                        "role": role,
                        "id": user.id,
                    }
                    return response
                else:
                    return Response(
                        {"No active": "This account is not active!!"},
                        status=status.HTTP_400_BAD_REQUEST)
            else:
                return Response({"message": "Invalid password!!"},
                                status=status.HTTP_202_ACCEPTED)

    # def delete(self, request):
    #     response = Response()
    #     response.data = {"message": "User Session Deletion"}
    #     return response


class ChangePasswordView(generics.UpdateAPIView):
    permission_classes = [IsAuthenticated]
    """
    An endpoint for changing password.
    """
    serializer_class = ChangePasswordSerializer
    model = User

    def get_user(self, pk):
        try:
            return User.objects.get(pk=pk)
        except User.DoesNotExist:
            raise Http404

    # # @method_decorator(auth_required())
    def update(self, request, *args, **kwargs):
        user = request.user
        data = request.data
        user = self.get_user(user.id)
        password = data.get('password', None)
        username = user.username
        user = authenticate(request, username=username, password=password)
        if user is None:
            return Response(data={"message": "Incorrect password"},
                            status=status.HTTP_400_BAD_REQUEST)
        else:

            serializer = self.get_serializer(data=request.data)

            if serializer.is_valid():

                # Check old password
                if serializer.data.get("password1") != serializer.data.get(
                        "password2"):
                    return Response(
                        {"message": "Password fields didn't match."},
                        status=status.HTTP_406_NOT_ACCEPTABLE)
                user.set_password(serializer.data.get("password1"))
                user.save()
                return Response({"message": "Password changed successfully"},
                                status=200)

            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)


class UserView(APIView):
    permission_classes = [IsAuthenticated]

    def get_user(self, pk):
        try:
            return User.objects.get(pk=pk)
        except User.DoesNotExist:
            raise Http404

    #  @method_decorator(auth_required())
    def put(self, request, format=None):
        user_id = request.user.id
        user = self.get_user(user_id)
        serialized_user = UserSerializerPUT(user, data=request.data)
        if serialized_user.is_valid():
            serialized_user.save()
            return Response(data=serialized_user.data,
                            status=status.HTTP_200_OK)
        return Response(serialized_user.errors, status=status.HTTP_200_OK)


class TestView(APIView):
    permission_classes = [IsAuthenticated]

    # @method_decorator(auth_required())
    def get(
        self,
        request,
    ):
        user = request.user.id
        role = UserRole.objects.filter(user=user).first().role.id

        return Response({"user": user, "role": role})


def home(request, format=None):
    return render(request, 'home.html')


class CommentView(APIView):
    permission_classes = [IsAuthenticated]

    def get_comment(self, pk):
        try:
            return Comment.objects.get(pk=pk)
        except Comment.DoesNotExist:
            raise Http404

    def get_comment_id(self, pk):
        try:
            return Comment.objects.get(id=pk)
        except Comment.DoesNotExist:
            raise Http404

    # # @method_decorator(auth_required())
    def get(self, request, parameter=None):
        user_id = request.user.id
        if parameter is None:
            items = Comment.objects.filter(comment_creator=user_id)
            stat = True
            serializer = CommentSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
        else:
            item = self.get_comment_id(parameter)
            serializer = CommentSerializer(item)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )

    # @method_decorator(auth_required())
    def post(self, request, parameter=0):
        user_id = request.user.id
        data = request.data
        data['comment_creator'] = user_id
        data['post'] = parameter
        comment = CommentSerializer(data=request.data)
        if not comment.is_valid():
            return Response(status=status.HTTP_204_NO_CONTENT,
                            data=comment.errors)
        comment.is_valid(raise_exception=True)
        comment.save()
        return Response(data=comment.data, status=status.HTTP_200_OK)

    # @method_decorator(auth_required())
    def put(self, request, parameter=0, format=None):
        user_id = request.user.id
        data = request.data
        data['comment_creator'] = user_id
        # import pdb
        # pdb.set_trace()
        comment = self.get_comment_id(parameter)
        if comment.comment_creator.id != user_id:
            return Response(
                {"message": "You are not the original owner of this comment."},
                status=status.HTTP_403_FORBIDDEN)

        serializer = CommentPUTSerializer(comment, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(data=serializer.data, status=status.HTTP_200_OK)

    def delete(self, request, parameter=0):

        if Comment.objects.filter(id=parameter).exists():
            comment = self.get_comment_id(parameter)
            comment.delete()
            return JsonResponse({'message': "Comment Succesfully deleted"})

        else:
            return JsonResponse({'message': "This Comment is not found"})


class PostView(APIView):
    permission_classes = [IsAuthenticated]

    def get_post(self, pk):
        try:
            return Post.objects.get(pk=pk)
        except Post.DoesNotExist:
            raise Http404

    def get_post_id(self, pk):
        try:
            return Post.objects.get(id=pk)
        except Post.DoesNotExist:
            raise Http404

    # @method_decorator(auth_required())
    def get(self, request, parameter=None):

        if parameter is None:

            items = Post.objects.all()
            stat = True
            serializer = PostSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
        else:
            item = self.get_post_id(parameter)
            serializer = PostSerializer(item)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )

    # @method_decorator(auth_required())
    def post(self, request, parameter=0):
        user_id = request.user.id
        data = request.data
        data['creator'] = user_id
        post = PostSerializer(data=request.data)
        if not post.is_valid():
            return Response(status=status.HTTP_204_NO_CONTENT,
                            data=post.errors)
        post.is_valid(raise_exception=True)
        post.save()
        return Response(data=post.data, status=status.HTTP_200_OK)

    # @method_decorator(auth_required())
    def put(self, request, parameter=0, format=None):
        # yo api khasei chaideina so, manipulating the serializer in my own way
        user_id = request.user.id
        data = request.data
        data['creator'] = user_id
        post = self.get_post_id(parameter)
        if post.creator.id != user_id:
            return Response(
                {"message": "You are not the original owner of this post."},
                status=status.HTTP_403_FORBIDDEN)

        serializer = PostPUTSerializer(post, data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(data=serializer.data, status=status.HTTP_200_OK)

    # @method_decorator(auth_required())
    def delete(self, request, parameter=0):

        if Post.objects.filter(id=parameter).exists():
            post = self.get_post_id(parameter)
            post.delete()
            return JsonResponse({'message': "Comment Succesfully deleted"})

        else:
            return JsonResponse({'message': "This Comment is not found"})


class CommentLikeView(APIView):

    def get_commentLike(self, pk):
        try:
            return CommentLike.objects.get(pk=pk)
        except CommentLike.DoesNotExist:
            raise Http404

    def get_commentLike_id(self, pk):
        try:
            return CommentLike.objects.get(id=pk)
        except CommentLike.DoesNotExist:
            raise Http404

    # @method_decorator(auth_required())
    def get(self, request, parameter=None):
        user_id = request.user.id
        if parameter is None:
            items = CommentLike.objects.filter(comment_liker=user_id)
            stat = True
            serializer = CommentLikerSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
        else:
            item = self.get_commentLike_id(parameter)
            serializer = CommentLikerSerializer(item)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )

    # @method_decorator(auth_required())
    def post(self, request, parameter=0):
        comment = Comment.objects.filter(id=parameter).exists()
        if not comment:
            return Response({"message": "This comment is not found."},
                            status=status.HTTP_404_NOT_FOUND)
        user_id = request.user.id
        data = request.data
        data['comment_liker'] = user_id
        data['comment'] = parameter
        if not CommentLike.objects.filter(comment_liker=user_id,
                                          comment_id=parameter).exists():
            data['status'] = True
            commentLike = CommentLikerSerializer(data=request.data)
            if not commentLike.is_valid():
                return Response(status=status.HTTP_204_NO_CONTENT,
                                data=commentLike.errors)
            commentLike.is_valid(raise_exception=True)
            commentLike.save()
            return Response(data=commentLike.data, status=status.HTTP_200_OK)

        else:
            commentLikeInstance = CommentLike.objects.get(
                comment_liker=user_id, comment_id=parameter)
            commentLikeInstance.status = not commentLikeInstance.status

            serializer = CommentLikerSerializer(commentLikeInstance)
            commentLikeInstance.save()
            return Response(data=serializer.data, status=status.HTTP_200_OK)


class PostLikeView(APIView):
    permission_classes = [IsAuthenticated]

    def get_postLike(self, pk):
        try:
            return PostLike.objects.get(pk=pk)
        except PostLike.DoesNotExist:
            raise Http404

    def get_postLike_id(self, pk):
        try:
            return PostLike.objects.get(id=pk)
        except PostLike.DoesNotExist:
            raise Http404

    # @method_decorator(auth_required())
    def get(self, request, user_id, parameter=0):

        item = PostLike.objects.filter(postLiker=user_id,
                                       post_id=parameter).exists()
        if not item:
            return Response(
                {
                    "message": "This postlike instance is not found.",
                    "status": False
                },
                status=status.HTTP_404_NOT_FOUND)

        itemPiece = PostLike.objects.get(postLiker=user_id, post_id=parameter)
        stat = False
        serializer = PostLikeSerializer(itemPiece, many=stat)
        return Response(
            data=serializer.data,
            status=status.HTTP_200_OK,
        )

    # @method_decorator(auth_required())
    def post(self, request, user_id, parameter=0):
        post = Post.objects.filter(id=parameter).exists()
        if not post:
            return Response({"message": "This post is not found."},
                            status=status.HTTP_404_NOT_FOUND)

        user = User.objects.filter(id=user_id).exists()
        if not user:
            return Response({"message": "This user is not found."},
                            status=status.HTTP_404_NOT_FOUND)
        user_id = user_id
        data = request.data
        data['postLiker'] = user_id
        data['post'] = parameter
        if not PostLike.objects.filter(postLiker=user_id,
                                       post_id=parameter).exists():
            data['status'] = True
            postLike = PostLikeSerializer(data=request.data)
            if not postLike.is_valid():
                return Response(status=status.HTTP_204_NO_CONTENT,
                                data=postLike.errors)
            postLike.is_valid(raise_exception=True)
            postLike.save()
            return Response(data=postLike.data, status=status.HTTP_200_OK)
        else:
            postLikeInstance = PostLike.objects.get(postLiker=user_id,
                                                    post_id=parameter)
            postLikeInstance.status = not postLikeInstance.status

            serializer = PostLikeSerializer(postLikeInstance)
            postLikeInstance.save()
            return Response(data=serializer.data, status=status.HTTP_200_OK)


@permission_classes([IsAuthenticated])
def friendsFunction2(request, pk=None):
    user_id = request.user.id
    if request.method == 'GET':
        friends = Friends.objects.filter(receiver=user_id)
        stat = True
        serializer = FriendsSerializer(friends, many=stat)
        return JsonResponse(serializer.data,
                            status=status.HTTP_200_OK,
                            safe=False)


class FriendsView2(APIView):
    permission_classes = [IsAuthenticated]

    # @method_decorator(auth_required())
    def get(self, request, parameter=None):
        user_id = request.user.id
        if parameter is None:
            items = Friends.objects.filter(receiver=user_id, status=False)
            stat = True
            serializer = FriendsSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )


class FriendsView3(APIView):
    permission_classes = [IsAuthenticated]

    # @method_decorator(auth_required())
    def get(self, request, pk):
        user_id = pk
        items = Friends.objects.filter(
            Q(sender=user_id, status=True)
            | Q(receiver=user_id, status=True))
        stat = True
        serializer = FriendsSerializer(items, many=stat)
        od = serializer.data
        od1 = json.dumps(od)
        # converts ordered dict to json string
        listOfFriends = []
        od2 = json.loads(od1)
        # converts json string to ordered dict
        for i in od2:
            if i['sender'] == user_id:
                listOfFriends.append(i['receiver'])
            else:
                listOfFriends.append(i['sender'])
        print(listOfFriends)
        users = User.objects.filter(id__in=listOfFriends)
        finalSerializer = UserSerializerPUT(users, many=True)
        return Response(
            data=finalSerializer.data,
            status=status.HTTP_200_OK,
        )
        # filter the data where the items element's sender or receiver is the user_id

        #    making an api that gets the user's friends from the list of user_id which is derived from items that is
        # not the user_id of the logged in user.


class FriendsView(APIView):
    permission_classes = [IsAuthenticated]

    def get_friends(self, pk):
        try:
            return Friends.objects.get(pk=pk)
        except Friends.DoesNotExist:
            raise Http404

    def get_friends_id(self, pk):
        try:
            return Friends.objects.get(id=pk)
        except Friends.DoesNotExist:
            raise Http404

    # @method_decorator(auth_required())
    def get(self, request, parameter=None):
        user_id = request.user.id
        if parameter is None:
            items = Friends.objects.filter(sender=user_id, status=False)
            stat = True
            serializer = FriendsSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
        else:
            item = self.get_friends_id(parameter)
            serializer = FriendsSerializer(item)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )

    # @method_decorator(auth_required())
    def post(self, request, parameter=0):
        user_id = request.user.id
        data = request.data
        data['sender'] = user_id
        data['receiver'] = parameter
        if Friends.objects.filter(sender=parameter, receiver=user_id).exists():
            friendInstance = Friends.objects.get(sender=parameter,
                                                 receiver=user_id)
            if friendInstance.status == True:
                return Response(data={
                    "message":
                    "You are already friends with this user."
                }, )
            else:
                return Response(data={
                    "message":
                    "INcoming friend request pending. Please choose confirm or delete."
                }, )
        else:
            if not Friends.objects.filter(sender=user_id,
                                          receiver=parameter).exists():
                data['status'] = False
                postLike = FriendsSerializer(data=request.data)
                if not postLike.is_valid():
                    return Response(status=status.HTTP_204_NO_CONTENT,
                                    data=postLike.errors)
                postLike.is_valid(raise_exception=True)
                postLike.save()
                return Response(data=postLike.data, status=status.HTTP_200_OK)

            else:
                friend = Friends.objects.get(sender=user_id,
                                             receiver=parameter)
                if friend.status == True:
                    return Response(data={"message": "Already friends"}, )
                else:
                    return Response(data={"message": "Already request sent"}, )

    # @method_decorator(auth_required())
    def put(self, request, parameter=0):
        user_id = request.user.id
        friendship = self.get_friends_id(parameter)
        if friendship.receiver.id == user_id:
            if friendship.status == True:
                return Response(
                    data={"message": "You guys are already friends."}, )
            else:
                friendship.status = True
                serializer = FriendsSerializer(friendship)
                friendship.save()
                return Response(data=serializer.data,
                                status=status.HTTP_200_OK)
        else:
            return Response(data={
                "message":
                "You are not the reciever for this request id."
            }, )

    # @method_decorator(auth_required())
    def delete(self, request, parameter=0):
        user_id = request.user.id
        friendship = self.get_friends_id(parameter)
        if friendship.receiver.id == user_id:
            friendship.delete()
            return Response(
                data={"message": "Friend request rejected succesfully."}, )
        else:
            return Response(data={
                "message":
                "You are not the reciever for this request id so you cannot delete it."
            }, )


class ConversationView(APIView):
    permission_classes = [IsAuthenticated]

    def get_convo(self, pk):
        try:
            return Conversation.objects.get(pk=pk)
        except Conversation.DoesNotExist:
            raise Http404

    def get(self, request, parameter=None):
        item = self.get_convo(parameter)
        serializer = ConversationSerializer(item)
        return Response(
            data=serializer.data,
            status=status.HTTP_200_OK,
        )

    def post(self, request):
        data = request.data
        
        data._mutable = True
        data['sender'] = data.get('sender')
        data['receiver'] =data.get('receiver')
        data._mutable = False
        if Conversation.objects.filter(sender=data['sender'],
                                       receiver=data['receiver']).exists():
            return Response(data={
                "message":
                "You already have a conversation with this user."
            }, )
        else:
            convo = ConversationSerializer(data=request.data)
            if not convo.is_valid():
                return Response(status=status.HTTP_204_NO_CONTENT,
                                data=convo.errors)
            convo.is_valid(raise_exception=True)
            convo.save()
            return Response(data=convo.data, status=status.HTTP_200_OK)


class MessagesView(APIView):
    permission_classes = [IsAuthenticated]

    def get_messagesByConvoId(self, pk):
        try:
            return Messages.objects.filter(conversationId=pk)
        except Messages.DoesNotExist:
            raise Http404

    def get(self, request, parameter=None):
        if parameter is not None:

            items = self.get_messagesByConvoId(parameter)
            stat = True
            serializer = MessageSerializer(items, many=stat)
            return Response(
                data=serializer.data,
                status=status.HTTP_200_OK,
            )
    def post(self, request, parameter=None):
        data = request.data
        # data._mutable = True
        data['conversationId'] = parameter
        data['sender'] = data.get('sender')
        data['text'] = data.get('text')
        # data._mutable = False
       
        message = MessageSerializer(data=request.data)
        if not message.is_valid():
            return Response(status=status.HTTP_204_NO_CONTENT,
                            data=message.errors)
        message.is_valid(raise_exception=True)
        message.save()
        return Response(data=message.data, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes([IsAuthenticated])
# that persmission is only there to check if any bearer authentication credentials were provided or not.
def GetConversationsByUserId(request, userId=None):
    items = Conversation.objects.filter(Q(sender=userId) | Q(receiver=userId))
    stat = True
    serializer = ConversationSerializer(items, many=stat)
    return Response(
        data=serializer.data,
        status=status.HTTP_200_OK,
    )
