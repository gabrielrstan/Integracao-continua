FROM ubuntu
MAINTAINER gabriel

RUN apt-get update
RUN apt-get install nginx


VOLUME /usr/share/nginx/html
VOLUME /etc/nginx

EXPOSE 8088


