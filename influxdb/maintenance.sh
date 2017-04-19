#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -it --name=influxdb --volume=$DIR/backups:/backups --volume=$DIR/data:/var/lib/influxdb --volume=$DIR/config:/etc/influxdb -p 18083:18083 -p 18086:18086 --entrypoint=/bin/bash influxdb -s
