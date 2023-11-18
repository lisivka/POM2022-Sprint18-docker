#!/bin/bash

# Collect static files
#echo "Collect static files"
#python3 library/manage.py collectstatic --noinput

# Apply database migrations
echo "Make database migrations files"
python library/manage.py makemigrations

echo "Apply database migrations"
python library/manage.py migrate
#python3 library/manage.py migrate --noinput

# Start server
echo "Starting server"
python library/manage.py runserver 0.0.0.0:8000

## Start Gunicorn processes
#echo "Starting Gunicorn."
#exec gunicorn myproject.wsgi:application \
#    --bind 0.0.0.0:8000 \
#    --workers 3
