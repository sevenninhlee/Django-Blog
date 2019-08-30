from django.conf.urls import url
from . import apiview
urlpatterns = [
	url(r'^$', apiview.PostListAPIView.as_view(), name='post-list'),
	url(r'^detail/(?P<pk>\d+)/$', apiview.PostDetailAPIView.as_view(), name='post-detail'),
	url(r'^comment/$', apiview.PostCommentAPIView.as_view(), name='post-list-comment'),
	url(r'^comment/children/$', apiview.PostCommentChildrenAPIView.as_view(), name='post-list-comment-children'),
	url(r'^comment/create/$', apiview.PostComentAddParentAPIView.as_view(), name='post-create-comment'),
	url(r'^categories/$', apiview.CategoriesAPIView.as_view(), name='categories'),
	url(r'^categories/list/$', apiview.PostOfCategoriesAPIView.as_view(), name='post-of-categories'),
	url(r'^login/$', apiview.UserProfile.as_view(), name='user-login'),
	url(r'^like/$', apiview.PostLikeAPIView.as_view(), name='post-like'),
	url(r'^like/(?P<pk>\d+)/$', apiview.PostLikeAPIView.as_view(), name='post-like'),
	url(r'^search/$', apiview.PostSearchTitle.as_view(), name='post-search'),
]