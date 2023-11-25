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


# Create superuser
echo "Creating superuser"
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('l@gmail.com', 'l@gmail.com', '123')" | python leemark/manage.py shell

# Start server
echo "Starting server"
python library/manage.py runserver 0.0.0.0:8000

## Start Gunicorn processes
#echo "Starting Gunicorn."
#exec gunicorn myproject.wsgi:application \
#    --bind 0.0.0.0:8000 \
#    --workers 3
