#!/bin/bash
python manage.py collectstatic --noinput
gunicorn merchex.wsgi:application --workers 2 --bind 0.0.0.0:$PORT
