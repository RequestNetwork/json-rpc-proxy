#!/usr/bin/env sh
set -eu
/usr/bin/envsubst '${NETWORK}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf
exec "$@"