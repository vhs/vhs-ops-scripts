#!/bin/bash

docker stop vhs-api
docker rm vhs-api

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=vhs-api --env-file ${DIR}/config.list --restart=always --link influxdb vanhack/api
docker exec -i vhs-nginx /usr/sbin/_reload_nginx_config.sh
