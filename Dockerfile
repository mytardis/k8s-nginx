FROM openresty/openresty:alpine

ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

COPY www /www

VOLUME /www
