from django.db import models
from django.contrib.auth.models import AbstractUser
from django.contrib.postgres.fields import ArrayField
import jwt
from fb_backend.settings import SIMPLE_JWT


class Notes(models.Model):
    user = models.ForeignKey('User', on_delete=models.CASCADE, null=True)
    notes = models.TextField(null=True)


SINGLE = 'Single'
ENGAGED = 'Engaged'
MARRIED = 'Married'
STATUS_CHOICES = (
    (SINGLE, 'Single'),
    (ENGAGED, 'Engaged'),
    (MARRIED, 'Married'),
)


class Hero(models.Model):

    name = models.CharField(max_length=60)
    alias = models.CharField(max_length=60)

    def __str__(self):
        return self.name


class User(AbstractUser):
    username = models.CharField(max_length=100, unique=True)
    email = models.EmailField(max_length=100, unique=True)
    password = models.CharField(max_length=100)
    profilePicture = models.CharField(max_length=500)
    bio = models.TextField(max_length=500, blank=True)
    coverPicture = models.CharField(max_length=500)
    followers = ArrayField(models.CharField(max_length=200), default=list)
    following = ArrayField(models.CharField(max_length=200), default=list)
    isAdmin = models.CharField(max_length=100, blank=True)
    desc = models.TextField(max_length=500, blank=True)
    city = models.CharField(max_length=100, blank=True)
    placeFrom = models.CharField(max_length=100, blank=True)
    relationship = models.CharField(max_length=50,
                                    choices=STATUS_CHOICES,
                                    default=SINGLE)

    def __str__(self):
        return str(self.id) + str(self.username)

    @classmethod
    def user_from_token(self, token):
        user = jwt.decode(
            token,
            SIMPLE_JWT['SIGNING_KEY'],
            algorithms=[SIMPLE_JWT['ALGORITHM']],
        )

        return user


class Role(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return str(self.name)


class UserRole(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    role = models.ForeignKey(Role, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.user)


class Post(models.Model):
    content = models.CharField(max_length=500)
    image = models.CharField(max_length=500)
    video = models.FileField(upload_to='post_pics', blank=True)
    creator = models.ForeignKey(User,
                                on_delete=models.CASCADE,
                                related_name='creator')
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)
    like = models.IntegerField(default=0)
    commentNumber = models.IntegerField(default=0)

    def __str__(self):
        return str(self.id)


class Conversation(models.Model):
    sender = models.ForeignKey(User,
                               on_delete=models.CASCADE,
                               related_name='senderPerson')
    receiver = models.ForeignKey(User,
                                 on_delete=models.CASCADE,
                                 related_name='receiverPerson')
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    def __str__(self):
        return str(self.id)


class Messages(models.Model):
    conversationId = models.ForeignKey(Conversation, on_delete=models.CASCADE)
    text = models.CharField(max_length=500)
    sender = models.ForeignKey(User, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return str(self.id)


class Comment(models.Model):
    comment_content = models.CharField(max_length=500)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    comment_creator = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)


class CommentLike(models.Model):
    comment = models.ForeignKey(Comment, on_delete=models.CASCADE)
    status = models.BooleanField(default=False)
    comment_liker = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)


class PostLike(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    status = models.BooleanField(default=False)
    postLiker = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return str(self.id)


class Friends(models.Model):
    sender = models.ForeignKey(User,
                               on_delete=models.CASCADE,
                               related_name='sender')
    receiver = models.ForeignKey(User,
                                 on_delete=models.CASCADE,
                                 related_name='receiver')
    status = models.BooleanField(default=False)