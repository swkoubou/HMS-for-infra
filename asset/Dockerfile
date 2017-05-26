FROM nginx

MAINTAINER yudai

RUN apt-get update && \
	apt-get install -y vim && \
	mkdir /usr/share/nginx/html/example && \
	echo "daemon off;" >> /etc/nginx/nginx.conf 

ADD ["conf/default.conf","/etc/nginx/conf.d/"]

CMD ["nginx"]
