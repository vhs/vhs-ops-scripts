#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d --name=isvhsopen --restart=always -p 3003:3000 vanhack/isvhsopen
