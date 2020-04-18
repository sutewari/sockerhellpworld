FROM alpine:3.4

RUN apk --update add nginx php5-fpm && \
    mkdir -p /run/nginx

ADD dockercloud-hello-world-master/www /www
ADD dockercloud-hello-world-master/nginx.conf /etc/nginx/
ADD dockercloud-hello-world-master/php-fpm.conf /etc/php5/php-fpm.conf
ADD dockercloud-hello-world-master/run.sh /run.sh

ENV LISTEN_PORT=80

EXPOSE 80
CMD /run.sh