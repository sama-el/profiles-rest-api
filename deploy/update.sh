#!/usr/bin/env bash

set -e

VIRTUALENV_BASE_PATH='/usr/local/virtualenvs/profiles_api'

git pull
$VIRTUALENV_BASE_PATH/bin/python manage.py migrate
$VIRTUALENV_BASE_PATH/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
