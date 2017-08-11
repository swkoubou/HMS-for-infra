FROM python:3.6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
EXPOSE 5000
RUN apt-get update
RUN apt-get install -y mysql-client vim cron
ADD ./gestion-api/requirements.txt .
ADD ./stress.cron .
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP gestion/__init__.py
CMD ["flask","initdb"]
