from django.conf.urls import url
from . import views
urlpatterns = [
	url(r'^$', views.PostsList.as_view(), name='posts-list'),
	url(r'^detail/(?P<pk>\d+)/$', views.PostsDetail.as_view(), name='posts-detail'),
]