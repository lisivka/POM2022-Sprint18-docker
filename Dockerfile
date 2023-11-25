FROM python:3.10-slim
RUN apt-get -y update \
    && apt-get -y install curl
#    && pip install psycopg2

LABEL description="Sprint-18_Django_Docker"
ENV PYTHONUNBUFFERED 1
#
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 8000
CMD ["python", "library/manage.py", "runserver", "0.0.0.0:8000"]