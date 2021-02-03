FROM ubuntu:20.04

RUN apt-get update && apt-get install python3 python3-pip -y && apt-get install sqlite3

RUN python3 -m pip install Django

COPY ./mysite /mysite

EXPOSE 80/tcp

WORKDIR /mysite

ENTRYPOINT ["python3", "manage.py", "runserver", "0:80"]
