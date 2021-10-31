FROM ubuntu
MAINTAINER gabriel

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean
RUN apt-get -y install git
RUN git clone https://github.com/gabrielrstan/Integracao-continua.git

VOLUME /usr/share/nginx/html
VOLUME /etc/nginx


COPY index.html /var/lib/docker/volumes/webserver_www/_data 

EXPOSE 8088:80

CMD ["nginx", "-g", "daemon off;"]


