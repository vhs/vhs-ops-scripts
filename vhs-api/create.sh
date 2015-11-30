#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=vhs-api --env-file ${DIR}/config.list --restart=always vanhack/api
