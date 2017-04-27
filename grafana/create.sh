#!/bin/bash

docker pull grafana/grafana
docker stop grafana
docker rm grafana

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=grafana --restart=always -p 3000:3000 -v $DIR/config:/etc/grafana -v $DIR/data:/var/lib/grafana grafana/grafana
