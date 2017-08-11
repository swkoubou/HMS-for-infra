FROM nginx

MAINTAINER yudai

RUN apt-get update
RUN apt-get install -y vim
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD conf/default.conf /etc/nginx/conf.d/

CMD ["nginx"]
