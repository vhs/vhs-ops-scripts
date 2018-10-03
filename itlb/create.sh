#!/bin/bash

NAME="vhs-itlb"
TEMPLATE="vanhack/itlb"

docker pull "$TEMPLATE"

docker stop "$NAME"
docker rm "$NAME"

docker run -d --restart=always --name $NAME -t $TEMPLATE bin/www
