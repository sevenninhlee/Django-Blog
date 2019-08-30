from rest_framework import serializers, fields
from .models import User
role_views = ["","Admin", "Leader", "User"]

class UserSerializer(serializers.ModelSerializer):
	duc = serializers.SerializerMethodField()
	class Meta:
		model = User
		# fields = '__all__'
		# exclude = ('password',)
		fields = ('id','first_name','last_name','duc','password','email','phone','username','role')
		extra_kwargs = {
            'password': {'write_only': True},
            'email': {'write_only': True}
        }
	def get_duc(self,obj):
		return role_views[obj.role]
class UserDetailSerializer(serializers.ModelSerializer):
	class Meta:
		model = User
		fields = '__all__'
