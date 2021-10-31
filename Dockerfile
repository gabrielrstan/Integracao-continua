FROM ubuntu
MAINTAINER gabriel

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean

VOLUME /usr/share/nginx/html
VOLUME /etc/nginx


COPY index.html .https://github.com/gabrielrstan/Integracao-continua.git /var/lib/docker/volumes/webserver_www/_data 

EXPOSE 8088:80

CMD ["nginx", "-g", "daemon off;"]


