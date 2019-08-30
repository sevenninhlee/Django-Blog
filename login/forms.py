from django import forms
from django.forms import ModelForm
from .models import *
role = ["","Admin", "Leader", "User"]
MY_CHOICES=((1,'Admin'),(2,'Leader'),(3,'User'))
class LoginForm(forms.Form):
	username = forms.CharField(max_length = 100)
	password = forms.CharField(widget = forms.PasswordInput())
   
class RegisterForm(forms.ModelForm):
	role = forms.ChoiceField(choices=MY_CHOICES) 
	password=forms.CharField(widget=forms.PasswordInput())	
	confirm_password=forms.CharField(widget=forms.PasswordInput())
	class Meta:
	    model=User
	    fields=('first_name','last_name','email','phone','username')
	def clean(self):
	    cleaned_data = super(RegisterForm, self).clean()
	    password = cleaned_data.get("password")
	    confirm_password = cleaned_data.get("confirm_password")
	    if password != confirm_password:
	        raise forms.ValidationError(
	            "password and confirm password does not match"
	        )