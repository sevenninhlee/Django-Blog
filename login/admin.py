from django.contrib import admin
from .models import *
# Register your models here.
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('username', 'email', 'phone','_Full_Name')
    list_filter = ['username'] 
    search_fields = ['username'] 

    def _Full_Name(self,obj):
    	return obj.first_name +" "+ obj.last_name    
    _Full_Name.short_description = 'Full ten'

admin.site.register(User,QuestionAdmin)