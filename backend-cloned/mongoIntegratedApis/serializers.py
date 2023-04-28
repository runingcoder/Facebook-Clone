from dataclasses import field
from pkg_resources import require
from rest_framework import serializers
from rest_framework.fields import ListField


from .models import *

from django.contrib.auth.password_validation import validate_password
from django.contrib.auth import get_user_model

User = get_user_model()


class NotesSerializer(serializers.ModelSerializer):

    class Meta:
        model = Notes
        fields = '__all__'


class userSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = '__all__'


class HeroSerializer(serializers.HyperlinkedModelSerializer):

    class Meta:
        model = Hero
        fields = ('id', 'name', 'alias')


class MongoIntegratedBackendSerializer(serializers.ModelSerializer):

    class Meta:
        model = Hero
        fields = ('id', 'name', 'alias')


class PostSerializer(serializers.ModelSerializer):

    class Meta:
        model = Post
        fields = '__all__'


class CommentLikerSerializer(serializers.ModelSerializer):

    class Meta:
        model = CommentLike
        fields = '__all__'


class PostLikeSerializer(serializers.ModelSerializer):
    status = serializers.BooleanField(required=False)

    class Meta:
        model = PostLike
        fields = '__all__'


class CommentSerializer(serializers.ModelSerializer):

    class Meta:
        model = Comment
        fields = '__all__'


class StringArrayField(ListField):
    """
    String representation of an array field.
    """

    def to_representation(self, obj):
        obj = super().to_representation(self, obj)
        # convert list to string
        return ",".join([str(element) for element in obj])

    def to_internal_value(self, data):
        data = data.split(",")  # convert string to list
        return super().to_internal_value(self, data)


class ConversationSerializer(serializers.ModelSerializer):
  

    class Meta:
        model = Conversation
        fields = '__all__'




class MessageSerializer(serializers.ModelSerializer):

    class Meta:
        model = Messages
        fields = '__all__'


class FriendsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Friends
        fields = '__all__'


class PostPUTSerializer(serializers.ModelSerializer):
    creator_id = serializers.IntegerField(required=False)
    image = serializers.ImageField(required=False)
    video = serializers.FileField(required=False)
    content = serializers.CharField(required=False)

    commentNumber = serializers.IntegerField(required=False)

    class Meta:
        model = Post
        fields = [
            'creator_id', 'content', 'image', 'video', 'commentNumber', 'like'
        ]



class CommentPUTSerializer(serializers.ModelSerializer):
    post = PostSerializer(read_only=True)

    class Meta:
        model = Comment
        fields = '__all__'


class MongoIntegratedBackendPOSTPUTSerializer(serializers.ModelSerializer):
    name = serializers.CharField(required=True)
    alias = serializers.CharField(required=True)

    class Meta:
        model = Hero
        fields = ('id', 'name', 'alias')


#   this is how we do custom validation.

    def validate(self, data):
        if data['name']:
            for n in data['name']:
                if n.isdigit():
                    raise serializers.ValidationError(
                        {'error': 'Name cannot contain numbers'})
        return data


class UserSerializer(serializers.ModelSerializer):
    id = serializers.IntegerField(read_only=True)
    profilePicture = serializers.ImageField(required=False)
    coverPicture = serializers.ImageField(required=False)
    isAdmin = serializers.CharField(required=False)
    desc = serializers.CharField(required=False)
    relationship = serializers.CharField(required=False)
    placeFrom = serializers.CharField(required=False)

    class Meta:
        model = User
        # list all fields of User

        fields = [
            'id', 'username', 'email', 'password', 'profilePicture',
            'coverPicture', 'isAdmin', 'desc', 'city', 'placeFrom',
            'relationship'
        ]
        extra_kwargs = {"password": {'write_only': True}}

    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)

        if password is not None:

            instance.set_password(password)
            instance.save()
            return instance


class UserSerializerPUT(serializers.ModelSerializer):
    email = serializers.EmailField(required=False)
    password = serializers.CharField(required=False)
    username = serializers.CharField(required=False)
    isAdmin = serializers.CharField(required=False)

    class Meta:
        model = User
        fields = [
            'username', 'email', 'password', 'profilePicture', 'coverPicture',
            'isAdmin', 'desc', 'city', 'placeFrom', 'relationship'
        ]

    def update(self, instance, validated_data):
        for attr, value in validated_data.items():
            if attr == 'password':
                instance.set_password(value)
            else:
                setattr(instance, attr, value)
        instance.save()
        return instance


class ChangePasswordSerializer(serializers.Serializer):
    model = User
    """
    Serializer for password change endpoint.
    """
    password = serializers.CharField(required=True)
    password1 = serializers.CharField(required=True,
                                      validators=[validate_password])
    password2 = serializers.CharField(required=True)
