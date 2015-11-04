# settings/local.py
from .base import *

DEBUG = True

# Database
# https://docs.djangoproject.com/en/1.8/ref/settings/#databases
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': get_env('ALEX_DB_NAME'),
        'USER': get_env('ALEX_DB_USER'),
        'PASSWORD': get_env('ALEX_DB_PASSWORD'),
        'HOST': get_env('ALEX_DB_HOST'),
        'PORT': get_env('ALEX_DB_PORT'),
    }
}

MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
STATIC_ROOT = os.path.join(BASE_DIR, 'static')

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'debug': DEBUG,
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

#INSTALLED_APPS += ("debug_toolbar", )
INTERNAL_IPS = ("127.0.0.1", )
#MIDDLEWARE_CLASSES += ( "debug_toolbar.middleware.DebugToolbarMiddleware", )
