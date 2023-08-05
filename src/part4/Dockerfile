FROM nginx

COPY server/main.c /etc/nginx/
COPY server/nginx.conf /etc/nginx/
COPY server/run.sh /etc/nginx/

RUN apt-get update && \
    apt-get install -y gcc spawn-fcgi libfcgi-dev


