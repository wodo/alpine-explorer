# settings/local.py
from .base import *

DEBUG = True
TEMPLATE_DEBUG = DEBUG

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

MEDIA_ROOT = BASE_DIR('media')
STATIC_ROOT = BASE_DIR('static')
TEMPLATE_DIRS = (
    BASE_DIR('templates'),
)

#INSTALLED_APPS += ("debug_toolbar", )
INTERNAL_IPS = ("127.0.0.1", )
#MIDDLEWARE_CLASSES += ( "debug_toolbar.middleware.DebugToolbarMiddleware", )
