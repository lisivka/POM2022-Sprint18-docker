# Django_Docker
```commandline
docker-compose
```
## install requirement project's packages

```commandline
pip install -r requirements.txt
```

## Run project

Go to the folder with manage.py file, run library
```commandline
python manage.py migrate 
```

```commandline
python manage.py runserver
```

## Run project in container
```commandline
python library/manage.py makemigrations
```
```
python library/manage.py migrate
```
