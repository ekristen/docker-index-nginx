#!/bin/bash

if [ "$REGISTRY_HOSTNAME" = "" ] || [ "$INDEX_HOSTNAME" = "" ]; then
  echo "Missing \$REGISTRY_HOSTNAME and/or \$INDEX_HOSTNAME variables"
  exit 10
fi

sed -i "s/REGISTRY_IP/$REGISTRY_PORT_5000_TCP_ADDR/g" /etc/nginx/sites-enabled/default
sed -i "s/INDEX_IP/$INDEX_PORT_5000_TCP_ADDR/g" /etc/nginx/sites-enabled/default

sed -i "s/REGISTRY_HOSTNAME/$REGISTRY_HOSTNAME/g" /etc/nginx/sites-enabled/default
sed -i "s/INDEX_HOSTNAME/$INDEX_HOSTNAME/g" /etc/nginx/sites-enabled/default

nginx
