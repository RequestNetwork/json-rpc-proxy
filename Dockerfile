FROM openresty/openresty:alpine
COPY ./default.conf.template .
RUN apk add gettext

# COPY docker-entrypoint.sh .
RUN /usr/bin/envsubst '${NETWORK} ${CACHE_TIME}' < ./default.conf.template > /etc/nginx/conf.d/default.conf
CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
# COPY conf.d/default.conf /etc/nginx/conf.d/default.conf

# RUN envsubst '${SOME_ENV}' with ${SOME_ENV} && envsubst '${SOME_ENV}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

# CMD ["/bin/sh","-c", " ; /usr/local/openresty/bin/openresty -g 'daemon off;'"]