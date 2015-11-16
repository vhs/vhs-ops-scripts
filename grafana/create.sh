#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker create --name=grafana -p 3000:3000 -v $DIR/data:/var/lib/grafana grafana/grafana
