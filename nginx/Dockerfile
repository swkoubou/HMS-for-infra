FROM nginx

MAINTAINER fitbit

RUN apt-get update && \
	apt-get install -y python3 && \
	apt-get install -y python-dev && \
	apt-get install -y python-pip && \
	pip install flask && \
        pip install uwsgi	

VOLUME ["/usr/share/nginx/html"]

ADD ["conf/default.conf","/etc/nginx/conf.d/"]
ADD ["run.sh","/usr/local/bin/"]
ADD ["myapp.ini","/usr/share/nginx/html/HNS-for-API/"]

CMD ["/usr/local/bin/run.sh"]
