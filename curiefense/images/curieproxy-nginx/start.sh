#!/bin/bash

rm -f /run/rsyslogd.pid
rsyslogd -n &

# shellcheck disable=SC2016
envsubst '${TARGET_ADDRESS_A},${TARGET_PORT_A},${TARGET_ADDRESS_B},${TARGET_PORT_B}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf
/usr/local/openresty/bin/openresty -g "daemon off;"
