"""blog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from login.views import *
from posts.views import *
from django.conf import settings
from django.conf.urls.static import static
from posts import views

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^login/$', loginView, name='login-page'),
	url(r'^$',views.PostsList.as_view() , name='home-page'),
    url(r'^register/$', registerView, name='register-page'),
    url(r'', include('login.urls_views')),
    url(r'^logout/$', logout, name='logout'),
    url(r'^api/', include('login.urls')),
    url(r'^posts/',include('posts.urls')),
    url(r'^api/posts/',include('posts.api_urls')),
]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL.replace(settings.SITE_URL, ''), document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL.replace(settings.SITE_URL, ''), document_root=settings.MEDIA_ROOT)