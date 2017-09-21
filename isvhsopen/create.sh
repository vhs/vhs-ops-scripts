#!/bin/bash

docker pull vanhack/isvhsopen

docker stop isvhsopen
docker rm isvhsopen

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=isvhsopen --restart=always --env-file ${DIR}/config.list -p 3003:3000 -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" vanhack/isvhsopen
