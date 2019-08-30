from django.db import models
from django.dispatch import receiver

# Create your models here.
class User(models.Model):
	
	first_name = models.CharField(max_length=50)
	last_name = models.CharField(max_length=50)
	email = models.CharField(max_length=50)
	phone = models.CharField(max_length=12)
	password = models.CharField(max_length=50)
	role = models.IntegerField()
	username = models.CharField(max_length=50)

	def __str__(self):
	    return self.username

class Musician(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    instrument = models.CharField(max_length=100)

class Album(models.Model):
    artist = models.ForeignKey(Musician, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    release_date = models.DateField()
    num_stars = models.IntegerField()

# @receiver(post_save, sender=UserBase)
# def create_auth_token(sender, instance=None, created=False, **kwargs):
#     if created:
#         Token.objects.create(user=instance)

