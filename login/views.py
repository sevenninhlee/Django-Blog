from django.shortcuts import render
from django.urls import reverse
from django.http import HttpResponse, HttpResponseRedirect
from .models import *
from .forms import *
from rest_framework import generics
from .serializers import *
from django.views.generic.edit import CreateView
from django.views.generic import TemplateView
# Create your views here.
def loginView(request):
    error = ""
    try:
        if request.session['userInfo']:
            return HttpResponseRedirect(reverse('user-page'))
    except: 
        pass
    if request.method=="POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            username=form.cleaned_data['username']
            password=form.cleaned_data['password']
            num_results = User.objects.filter(username=username, password=password).count()
            if num_results > 0:
                request.session['userInfo']=username
                request.session.set_expiry(36000);
                return HttpResponseRedirect(reverse('user-page'))
        error="Wrong username or password"
    else:
        form=LoginForm()
    return render(request,'login/login.html',{'form':form,'error':error})

def registerView(request):
    error = ""
    form=RegisterForm()
    if request.method=="POST":
        form=RegisterForm(request.POST)
        if form.is_valid():
            first_name = form.cleaned_data['first_name']
            last_name = form.cleaned_data['last_name']
            email = form.cleaned_data['email']
            phone = form.cleaned_data['phone']
            password = form.cleaned_data['password']
            role = int('0' + form.cleaned_data['role'])
            username = form.cleaned_data['username']
            User.objects.create(first_name=first_name, last_name=last_name, email=email, phone=phone, password=password, role=role, username=username)
            try:
                if request.session['userInfo']:
                    del request.session['userInfo']         
            except:
                pass
            return HttpResponseRedirect(reverse('login-page'))
        else:
            error=" Error !"
    return render(request,'login/register.html',{'form':form,'error':error})
import pprint
def showUser(request):
    try:
        if request.session['userInfo']:
            pass
    except: 
        return HttpResponseRedirect(reverse('login-page'))
    list_user = User.objects.all()  
    return render(request, 'admin-site/index.html', {'list_user':list_user,'role':role})

def logout(request):
    try:
        del request.session['userInfo']
    except:
        pass
    return HttpResponseRedirect(reverse('login-page'))  

class UserList(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class UserDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = User.objects.all()
    serializer_class = UserDetailSerializer

class UserAddView(TemplateView):
    template_name = "admin-site/user_form.html"

class UserView(TemplateView):
    template_name = "admin-site/view.html"

class UserEdit(TemplateView):
    template_name = "admin-site/edit.html"