from django.contrib import admin
from requests import post
# Register your models here.
from .models import *

admin.site.register(Hero)
admin.site.register(User)
admin.site.register(Role)
admin.site.register(UserRole)
admin.site.register(Comment)
admin.site.register(Friends)
admin.site.register(CommentLike)
admin.site.register(PostLike)
admin.site.register(Notes)
admin.site.register(Conversation)
admin.site.register(Messages)


@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    readonly_fields = ('created_at', 'updated_at')
