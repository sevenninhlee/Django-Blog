from django.views.generic import TemplateView
from .models import Post, Comment, Category, UserBase
from django.views import generic

# Create your views here.
class PostsList(TemplateView):
    template_name = "index.html"

class PostsDetail(generic.DetailView):
    model = Post
    template_name = "detail.html"

