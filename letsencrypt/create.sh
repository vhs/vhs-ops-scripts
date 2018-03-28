#!/bin/sh

if [ $# -ne 1 ] ; then
 echo "Missing hostname"
 exit
fi

if [ ! -d /var/containers/shared/.well-known ] ; then
 echo "Missing shared .well-known directory"
 exit
fi

docker pull certbot/certbot

docker run -t --rm --name letsencrypt \
           -v "/etc/letsencrypt:/etc/letsencrypt" \
           -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
           -v "/var/containers/shared/.well-known:/var/nginx/.well-known" \
           --volumes-from vhs-nginx \
           certbot/certbot certonly --webroot -w /var/nginx -d $1
