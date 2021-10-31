FROM ubuntux
MAINTAINER gabriel

RUN apt-get update
RUN apt-get install -y nginx && apt-get clean
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME /usr/share/nginx/html
VOLUME /etc/nginx

EXPOSE 8080




EXPOSE 8080

