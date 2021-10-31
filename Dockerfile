FROM ubuntu
MAINTAINER gabriel

RUN apt-get update
RUN sudo apt install nginx


VOLUME /usr/share/nginx/html
VOLUME /etc/nginx

EXPOSE 8088


