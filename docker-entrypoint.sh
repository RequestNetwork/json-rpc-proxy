#!/usr/bin/env sh
set -eu
/usr/bin/envsubst '${ADDRESS} ${CACHE_TIME}' < ./default.conf.template > /etc/nginx/conf.d/default.conf
exec "$@"