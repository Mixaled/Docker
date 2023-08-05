FROM nginx

RUN useradd -ms /bin/bash appuser \
    && chown -R appuser:appuser /etc/nginx /var/cache/nginx

WORKDIR /etc/nginx

RUN apt-get update \
    && apt-get install -y gcc spawn-fcgi libfcgi-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

COPY server/main.c /etc/nginx/
COPY server/nginx.conf /etc/nginx/
COPY server/run.sh /etc/nginx/

RUN chmod -R 755 /etc/nginx /var/cache/nginx

USER root

RUN touch /var/run/nginx.pid \
    && chown appuser:appuser /var/run/nginx.pid

USER appuser

HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl --fail http://localhost/ || exit 1
