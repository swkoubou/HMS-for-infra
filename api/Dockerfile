FROM python:3.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y mysql-client vim
ADD ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN export FLASK_APP=gestion/__init__.py
