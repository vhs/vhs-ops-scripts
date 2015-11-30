#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=influxdb --restart=always --volume=$DIR/data:/data --volume=$DIR/config:/config -p 8083:8083 -p 8086:8086 tutum/influxdb
