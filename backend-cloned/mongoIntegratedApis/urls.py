from django import views
from django.urls import include, path, re_path
from rest_framework import routers
from .views import *

# router = routers.DefaultRouter()
# router.register(r'friendships', FriendsView, basename='Friends')
# router = routers.DefaultRouter()
# router.register(r'heroes', HeroViewSet)
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    # path('', include(router.urls)),
    # re_path(r'^friendships/receivedrequests/$',
    #         FriendsView.as_view({'get': 'receivedrequests'}),
    #         name='receivedrequests'),
    # re_path(r'^friendships/sentrequests/$',
    #         FriendsView.as_view({'get': 'sentrequests'}),
    #         name='sentrequests'),
    path('notes', notes, name='notes'),
    path('conversations/<int:userId>',
         GetConversationsByUserId,
         name='GetConversationsByUserId'),
    path('putLike/<int:pk>', putLike, name='putLike'),
    path('getuserByName/<str:pk>', getuserByName, name='getuserByName'),
    path('getSpecificUserPost/<str:pk>',
         getSpecificUserPost,
         name='getSpecificUserPost'),
    path('getMyPosts', getMyPosts, name='getMyPosts'),
    path('api-auth/', include('rest_framework.urls',
                              namespace='rest_framework')),
    # re_path(r"^hero/(?P<parameter>\d+)", MongoIntegratedBackend.as_view()),
    # path("hero", MongoIntegratedBackend.as_view()),
    re_path(r"^user/(?P<parameter>\d+)", UserViewTime.as_view()),
    path("user", UserViewTime.as_view()),
    re_path(r"^comments/(?P<parameter>\d+)", CommentView.as_view()),
    re_path(r"^conversation/(?P<parameter>\d+)", ConversationView.as_view()),
    path("conversation", ConversationView.as_view()),
    re_path(r"^messages/(?P<parameter>\d+)", MessagesView.as_view()),
    # re_path(r"^messages/(?P<parameter>\d+)/(?P<sender>\d+)",
    #         MessagesView.as_view()),
    path("comments", CommentView.as_view()),
    re_path(r"^posts/(?P<parameter>\d+)", PostView.as_view()),
    path("posts", PostView.as_view()),
    re_path(r"^likeComment/(?P<parameter>\d+)", CommentLikeView.as_view()),
    path("likeComment", CommentLikeView.as_view()),
    re_path(r"^likePost/(?P<user_id>\d+)/(?P<parameter>\d+)",
            PostLikeView.as_view()),
    path("likePost", PostLikeView.as_view()),
    path("home", home, name="home"),
    # path("deleteBackend/<int:pk>", delete),
    path("test", TestView.as_view()),
    # path('register/', registerPage, name='register'),
    path('register', RegisterView.as_view(), name='register'),
    path('login', LoginView.as_view(), name='login'),
    path('token', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh', TokenRefreshView.as_view(), name='token_refresh'),
    path('changepassword', ChangePasswordView.as_view()),
    path('updateuser', UserView.as_view(), name='update'),
    re_path(r"^friendships/(?P<parameter>\d+)", FriendsView.as_view()),
    path("friendships", FriendsView.as_view()),
    re_path(r"^friendships2/(?P<parameter>\d+)", FriendsView2.as_view()),
    path("friendships2", FriendsView2.as_view()),
    path("friendsList/<int:pk>", FriendsView3.as_view()),

    

    # path('testParams/<int:a>/<int:b>', testParams, name='testParams'),
]