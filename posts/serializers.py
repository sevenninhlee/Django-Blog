from rest_framework import serializers, fields
from .models import Post, Comment, Category, UserBase

class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'

class CommentSerializerChild(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = '__all__'

class CommentSerializer(serializers.ModelSerializer):
    childrent = CommentSerializerChild(many=True, read_only=True)
    class Meta:
        model = Comment
        fields = '__all__'

class CategoriesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'

class UserSerializer(serializers.ModelSerializer):
    avatar_url = serializers.CharField(read_only=True)
    qr_code = serializers.SerializerMethodField(read_only=True)

    class Meta:
        model = UserBase
        fields = ('id','username','password','email',
            'first_name','last_name','like','is_active',
            'is_staff','is_superuser', 'last_login', 'date_joined')
        extra_kwargs = {'password': {'write_only': True},
                        'username': {'write_only': True},}

    def create(self, validated_data):
        if validated_data.has_key('password'):
            user = UserBase()
            user.set_password(validated_data['password'])
            validated_data['password'] = user.password
        validated_data['is_active'] = True
        validated_data['is_staff'] = True
        validated_data['is_superuser'] = True
        return super(UserSerializer, self).create(validated_data)       

class UserWithTokenSerializer(UserSerializer):
    token = serializers.CharField(read_only=True)
    class Meta(UserSerializer.Meta):
        fields = UserSerializer.Meta.fields + ('token',)