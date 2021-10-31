FROM ubuntu
MAINTAINER gabriel

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


VOLUME /usr/share/nginx/html
VOLUME /etc/nginx

EXPOSE 8088:80

CMD ["nginx", "-g", "daemon off;"]


