FROM ubuntu
MAINTAINER gabriel

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get clean


VOLUME /usr/share/nginx/html
VOLUME /etc/nginx

EXPOSE 8088:80

CMD ["nginx", "-g", "daemon off;"]


