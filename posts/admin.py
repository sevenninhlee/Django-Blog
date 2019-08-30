from django.contrib import admin
from .models import Category, Post, UserBase
from django.contrib.auth.admin import UserAdmin
# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name',)
    search_fields = ('name',)

class PostAdmin(admin.ModelAdmin):
    list_display = ('name','status')
    search_fields = ('name',)
    list_editable = ('status',)

admin.site.register(Category,CategoryAdmin)
admin.site.register(Post,PostAdmin)
admin.site.register(UserBase, UserAdmin)
