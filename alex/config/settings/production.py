# settings/production.py
from .base import *

DEBUG = False
TEMPLATE_DEBUG = DEBUG

ADMINS = (
    (get_env('ALEX_ADMIN_NAME'), get_env('ALEX_ADMIN_EMAIL')),
)

MANAGERS = ADMINS

# Hosts/domain names that are valid for this site; required if DEBUG is False
# See https://docs.djangoproject.com/en/1.8/ref/settings/#allowed-hosts
ALLOWED_HOSTS = ['alpine-explorer.eu', 'www.alpine-explorer.eu']

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

MEDIA_ROOT = '/usr/local/nginx/html/media/'
STATIC_ROOT = '/usr/local/nginx/html/static/'
TEMPLATE_DIRS = (
    BASE_DIR('templates'),
)

# Additional locations of static files
STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
)

INTERNAL_IPS = ("127.0.0.1", )

EMAIL_HOST = get_env('ALEX_EMAIL_HOST')
EMAIL_PORT = get_env('ALEX_EMAIL_PORT')
EMAIL_HOST_USER = get_env('ALEX_EMAIL_HOST_USER')
EMAIL_HOST_PASSWORD = get_env('ALEX_EMAIL_HOST_PASSWORD')
EMAIL_USE_TLS = get_env('ALEX_EMAIL_USE_TLS')

