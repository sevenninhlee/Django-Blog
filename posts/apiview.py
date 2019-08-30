from django.shortcuts import render
from django.urls import reverse
from django.http import HttpResponse, HttpResponseRedirect
from rest_framework.response import Response
from django.views.generic import TemplateView
from rest_framework import generics
from .models import Post, Comment, Category, UserBase
from .serializers import *
from django.views import generic
from django.contrib.auth import authenticate
import pprint
from . import api_utils
from datetime import datetime
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.permissions import BasePermission, IsAdminUser, IsAuthenticated
from django.db.models import Q

# User login and get their profile
class UserProfile(generics.GenericAPIView):
    serializer_class = UserWithTokenSerializer

    def post(self, request, format=None):
        fb_token = request.data.get('fb_token')
        # gp_token = request.data.get('gp_token')
        email = request.data.get('email')
        password = request.data.get('password')

        user = None

        if request.user.is_authenticated:
            user = request.user
        elif fb_token:
            user = UserBase.get_or_create_user_from_facebook(fb_token, should_create=False)
        # elif gp_token:
        #     user = UserBase.get_or_create_user_from_googleplus(gp_token, should_create=False)
        elif email and password:
            user = authenticate(username=email, password=password)
        if not user:
            raise api_utils.BadRequest("INVALID_PROFILE")

        # if request.session.get('_auth_user_id', 0) != user.id:
        #     # create logged in session for the user if not available
        #     utils.login_user(request, user)
        if type(user) == UserBase:
            user.last_login = datetime.now()
            user.save()
            serializer = self.get_serializer(user)
            return Response(serializer.data)
        raise api_utils.BadRequest("INVALID_PROFILE")

class PostListAPIView(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    def get_queryset(self):
        ret = self.queryset
        search = self.request.GET.get('search', False)
        if search:
            ret = self.queryset.filter(Q(name__icontains__in=search)|\
                Q(preview_text=search))
        return ret

class PostDetailAPIView(generics.RetrieveUpdateAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer


class PostCommentAPIView(generics.ListAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer

    def get_queryset(self):
	    ret = []
	    new_id = self.request.GET.get('new_id', False)
	    if new_id:
	        ret = self.queryset.filter(new=new_id,parent=None)
	    return ret          

class PostOfCategoriesAPIView(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    def get_queryset(self):
        ret = []
        cat_id = self.request.GET.get('cat_id', False)
        if cat_id:
            ret = self.queryset.filter(cat_id=cat_id)
        return ret

class PostComentAddParentAPIView(generics.CreateAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer

class CategoriesAPIView(generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategoriesSerializer

class PostLikeAPIView(APIView):
    #permission_classes = [IsAuthenticated]
    def post(self,request,format=None):
        ret = {}
        id_post = request.data.get("id_post",None)

        try:
            post=Post.objects.get(pk=id_post)
        except Exception as e:
            raise  api_utils.BadRequest("ID_INVALID")
        if request.user.like.filter(id=post.id):
            request.user.like.remove(post)
        else:
            request.user.like.add(post)
        ret['number_of_like']=post.like_post.all().count()
        return Response(ret,status=status.HTTP_200_OK)

    def get(self,request,pk):
        ret = {}
        try:
            post=Post.objects.get(pk=pk)
        except Exception as e:
            raise  api_utils.BadRequest("ID_INVALID")
        if request.user.like.filter(id=post.id):
            request.user.like.remove(post)
        else:
            request.user.like.add(post)
        ret['number_of_like']=post.like_post.all().count()
        return Response(ret,status=status.HTTP_200_OK)

class PostCommentChildrenAPIView(generics.ListAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer

    def get_queryset(self):
        ret = []
        parend = self.request.GET.get('parent', False)
        if parend:
            ret = self.queryset.filter(parent=parend)
        return ret  

class PostSearchTitle(generics.ListAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializer
    def get_queryset(self):
        ret = []
        search = self.request.GET.get('search', False)
        search = search.split()
        q = Q()
        for search in search:
            q |= Q(name__icontains = search)
        ret = self.queryset.filter(q)
        return ret