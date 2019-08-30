# Kapua-Engineering

## Getting Started
Git hub repo: [learn-django](https://bitbucket.org/pscd-django-angular2/django-blog-demo/src)

### Installing

A step by step series of examples that tell you have to get a development env running.

1. Django backend.

```
virtualenv -p python3 env
```
```
pip install -r requirements.txt
```

Setting database in settings_local.py


```
python manage.py makemigrations
python manage.py makemigrations blog
```

```
python manage.py migrate
```

import database mysql:
```
blog.sql
```

```
	python manage.py runserver
```

## Demo URLS

1. Home page:
```
http://localhost:8000/
```
2. Login
* username
```
a@gmail.com
```
* password
```
Ntd123456
```

