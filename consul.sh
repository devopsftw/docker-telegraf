#!/bin/sh

cp /etc/consul/consul.json.tpl /etc/consul/consul.json
/usr/local/bin/ep /etc/consul/consul.json

/usr/local/bin/consul agent \
    -join $CONSUL_HOST \
    -dc $CONSUL_DC \
    -domain $CONSUL_DOMAIN \
    -config-file /etc/consul/consul.json \
    -config-dir /etc/consul/conf.d &

source /entrypoint.sh
