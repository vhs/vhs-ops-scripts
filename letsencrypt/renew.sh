#!/bin/sh

if [ ! -d /var/containers/shared/.well-known ] ; then
 echo "Missing shared .well-known directory"
 exit
fi

docker pull certbot/certbot

docker run -t --rm --name letsencrypt \
           -v "/etc/letsencrypt:/etc/letsencrypt" \
           -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
           -v "/var/log/letsencrypt:/var/log/letsencrypt" \
           -v "/var/containers/shared/.well-known:/var/nginx/.well-known" \
           --volumes-from vhs-nginx \
           certbot/certbot renew

docker kill --signal=HUP vhs-nginx
