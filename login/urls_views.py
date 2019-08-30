from django.conf.urls import url
from . import views

urlpatterns = [
	url(r'^users/$', views.showUser, name='user-page'),
	url(r'^users/add/$', views.UserAddView.as_view(), name='user-add'),
	url(r'^users/(?P<pk>[0-9]+)$', views.UserDetail.as_view(), name='user-detail'),
	url(r'^users/detail/(?P<pk>[0-9]+)$', views.UserView.as_view(), name='user-detail'),
	url(r'^users/edit/(?P<pk>[0-9]+)$', views.UserEdit.as_view(), name='user-edit'),
]
