# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import AbstractUser
from rest_framework.authtoken.models import Token
from django.utils.translation import ugettext_lazy as _
from facepy import GraphAPI
from datetime import datetime, date
import facebook
from django.conf import settings
import pprint

# Create your models here.

class Category(models.Model):
    name = models.CharField(max_length=120)

    def __str__(self):
        return self.name

class Post(models.Model):
    CONST_STATUS_ENABLED = 0
    CONST_STATUS_BLOCKED = 10

    CONST_STATUSES = (
        (CONST_STATUS_ENABLED, 'On'),
        (CONST_STATUS_BLOCKED, 'Off'),
    )
    status = models.PositiveSmallIntegerField(choices=CONST_STATUSES,
                                              default=CONST_STATUS_ENABLED,null=True)
    name = models.CharField(max_length=200)
    preview_text = models.TextField()
    detail_text = models.TextField()
    cat = models.ForeignKey(Category,on_delete=models.CASCADE)
    picture = models.ImageField(blank=True, null=True, upload_to='drink')

    def __str__(self):
        return self.name

class Comment(models.Model):
    content = models.TextField()
    fullname = models.CharField(max_length=200)
    parent = models.ForeignKey('self',null=True,on_delete=models.CASCADE, related_name='childrent')
    new = models.ForeignKey(Post,on_delete=models.CASCADE)
        
    def __str__(self):
        return self.content 

    @property
    def number_comment(self):
        return 0
    

class UserBase(AbstractUser):
    like = models.ManyToManyField(Post,related_name="like_post")
    email = models.EmailField(_('email address'), unique=True)
    birthday = models.DateField(null=True, blank=False)
    avatar = models.ImageField(help_text=_('Picture shall be squared, max 640*640, 500k'), upload_to='avatars',
                                 null=True, blank=True)
    avatar_url = models.CharField(max_length=200, null=True, blank=True, default=settings.MEDIA_URL+'avatar_defautl.png')
    opt = models.CharField(max_length=255, null=True, blank=True)
    is_email_verified = models.BooleanField(default=False)
    is_robot = models.BooleanField(default=False)
    fb_uid = models.CharField(max_length=200, null=True, blank=True)
    fb_access_token = models.CharField(max_length=1000, null=True, blank=True)

    @property
    def full_name(self):
        return u'{} {}'.format(self.first_name,self.last_name)

    @property
    def token(self):
        return self.auth_token.key

    @property
    def qr_code(self):
        datetime_format = '%Y-%m-%d %H:%M:%S'
        # today = (self.last_login).strftime(datetime_format)
        data = u'User:{} {} Id:{}'.format(self.first_name, self.last_name, self.id)
        data = urllib.quote_plus(data)
        return u'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data={}'.format(data)

    @classmethod
    def get_or_create_user_from_facebook(self, fb_token, should_create=True):
        new_user = UserBase()
        try:
            graph = facebook.GraphAPI(access_token=fb_token,version=2.7)
            user = graph.get_object(id="me",fields="email, first_name, last_name, birthday")
            fb_uid = user.get('id')
            email = user.get('email')
            first_name = user.get('first_name', '')
            last_name = user.get('last_name', '')
            birthday = user.get('birthday', '')
            birthday = datetime.strptime(birthday, '%m/%d/%Y')
            avatar_url = "http://graph.facebook.com/%s/picture?width=500&height=500&type=square" % fb_uid
            new_user = self.objects.filter(fb_uid=fb_uid).first()
            if not new_user:
                new_user = self.objects.filter(username=email).first()
            if not new_user:
                new_user = UserBase(username=email, email=email, fb_uid=fb_uid,
                            first_name=first_name, last_name=last_name, is_email_verified=True,
                            birthday=birthday.date(), avatar_url=avatar_url,
                            fb_access_token=str(fb_token).encode('utf-8'))
                new_user.save()
            else:
                # Update user information if it was changed.
                new_user.first_name=first_name
                new_user.fb_uid=fb_uid
                new_user.last_name=last_name
                new_user.birthday=birthday.date()
                new_user.is_email_verified==True
                new_user.fb_access_token=str(fb_token).encode('utf-8')
                new_user.avatar_url=avatar_url
                new_user.save()

        except Exception as e:
            print (">>> get_or_create_user_from_facebook ::", e)
            pass
        return new_user  