#!/bin/bash

docker pull vanhack/isvhsopen

docker stop isvhsopen
docker rm isvhsopen

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=isvhsopen --restart=always --env-file ${DIR}/config.list vanhack/isvhsopen
