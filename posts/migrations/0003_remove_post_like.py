# Generated by Django 2.0.6 on 2018-07-18 04:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0002_auto_20180716_0709'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='like',
        ),
    ]