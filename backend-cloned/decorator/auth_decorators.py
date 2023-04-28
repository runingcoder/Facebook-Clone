from django.http import HttpResponseForbidden
from django.shortcuts import redirect

from rest_framework import status
from rest_framework.response import Response
from django.http import HttpResponse

from fb_backend.settings import SIMPLE_JWT
from django.contrib.auth import get_user_model
from mongoIntegratedApis.models import *

User = get_user_model()


def auth_required():
    # token baata user id patta lagaune chig.
    # token chaina bhaneforbidden bhannu parcha

    def decorator(func):

        def wrapper(request, *args, **kwargs):
            # yo waala code kunei dinn bujhnu parcha
            if 'HTTP_AUTHORIZATION' in request.META:
                user = User.user_from_token(
                    request.META['HTTP_AUTHORIZATION'].split(" ")[1])
            else:
                if 'access_token' not in request.COOKIES:
                    return HttpResponseForbidden()
                token = request.COOKIES['access_token']
                user = User.user_from_token(token)
            if user['user_id'] is not None:
                return func(request, user['user_id'], **kwargs)
            else:
                return HttpResponseForbidden()

        return wrapper

    return decorator


def check_auth():
    # token baata user id patta lagaune chig.
    # token cha bhane forbidden bhannu parcha

    def decorator(func):

        def wrapper(request, *args, **kwargs):

            if 'access_token' not in request.COOKIES:
                return func(request, **kwargs)

            else:
                return HttpResponse('You need to log out first')

        return wrapper

    return decorator


def remind_auth():
    # token baata user id patta lagaune chig.
    # token cha bhane forbidden bhannu parcha

    def decorator(func):

        def wrapper(request, *args, **kwargs):

            if 'access_token' not in request.COOKIES:
                return func(request, **kwargs)

            else:
                # return HttpResponse('Already Logged in.')
                return Response(
                    data={'message': 'Already Logged in.'},
                    status=status.HTTP_202_ACCEPTED,
                )

        return wrapper

    return decorator
