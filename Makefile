#https://www.youtube.com/watch?v=iBZrUpcqaIk



migrations:
	@docker exec -it -w /code django python library/manage.py makemigrations
#
migrate:
	@docker exec -it -w /code django3 python library/manage.py migrate
#
#
#start_compose:
#	@docker-compose -f docker-compose.yml up
#
#test_env:
#	@cat ./docker/envs/env_example > ./docker/envs/.env
#
#test_user:
#	@docker exec -it -w /pom-54-team-03 django_api python src/manage.py createsuperuser


# Makefile for Django project
# Define variables
#PROJECT_NAME = DjangoPosrgres
PYTHON = python3
PIP = pip3
MANAGE = $(PYTHON) library/manage.py

# Define targets
runserver:
	$(MANAGE) runserver

makemigrations:
	$(MANAGE) makemigrations
#
migrate:
	$(MANAGE) migrate

createsuperuser:
	$(MANAGE) createsuperuser

install:
	$(PIP) install -r requirements.txt

test:
	$(MANAGE) test

