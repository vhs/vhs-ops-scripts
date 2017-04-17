#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=influxdb --restart=always --volume=$DIR/data:/var/lib/influxdb --volume=$DIR/config:/etc/influxdb -p 8083:8083 -p 8086:8086 influxdb
