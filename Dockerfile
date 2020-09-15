FROM openresty/openresty:alpine
COPY ./default.conf.template .
RUN apk add gettext

COPY docker-entrypoint.sh .
CMD ["/bin/sh", "docker-entrypoint.sh", "/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
