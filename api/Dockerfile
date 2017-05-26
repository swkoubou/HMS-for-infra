FROM nginx

MAINTAINER yudai

RUN apt-get update && \
	apt-get install -y vim && \
	apt-get install -y python3 && \
	apt-get install -y python3-dev && \
	apt-get install -y python3-pip

ADD ["conf/default.conf","/etc/nginx/conf.d/"]
ADD ["run.sh","/usr/local/bin/"]

CMD ["/usr/local/bin/run.sh", "&&", "service nginx start"]

