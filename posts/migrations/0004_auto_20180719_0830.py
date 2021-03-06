# Generated by Django 2.0.6 on 2018-07-19 08:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0003_remove_post_like'),
    ]

    operations = [
        migrations.AddField(
            model_name='userbase',
            name='avatar',
            field=models.ImageField(blank=True, help_text='Picture shall be squared, max 640*640, 500k', null=True, upload_to='avatars'),
        ),
        migrations.AddField(
            model_name='userbase',
            name='avatar_url',
            field=models.CharField(blank=True, default='http://localhost:8000/media/avatar_defautl.png', max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='userbase',
            name='birthday',
            field=models.DateField(null=True),
        ),
        migrations.AddField(
            model_name='userbase',
            name='fb_access_token',
            field=models.CharField(blank=True, max_length=1000, null=True),
        ),
        migrations.AddField(
            model_name='userbase',
            name='fb_uid',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='userbase',
            name='is_email_verified',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='userbase',
            name='is_robot',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='userbase',
            name='opt',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='userbase',
            name='email',
            field=models.EmailField(max_length=254, unique=True, verbose_name='email address'),
        ),
    ]
