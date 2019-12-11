FROM gcr.io/google_containers/nginx-slim:0.16

ADD nginx.conf /etc/nginx/nginx.conf

COPY www /www

VOLUME /www
