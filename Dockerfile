FROM openresty/openresty:alpine
RUN apk add gettext
COPY docker-entrypoint.sh .
COPY ./default.conf.template .
CMD ["/bin/sh", "docker-entrypoint.sh", "/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
