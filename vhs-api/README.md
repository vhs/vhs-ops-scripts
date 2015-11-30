# VHS Api Docker Container

Api that pretty much just tells you the door is open - that's about it.

## Installing

Create a file config.list with the influx user/password you want to use. Use config.list.sample for a list of options

Run create.sh. This will create a docker container and run it. By default it will restart automatically
when docker is restarted. The image is built in docker hub automatically, source code can be found at http://github.com/vhs/api

## Starting and Stopping

```bash
$ docker stop vhs_api
$ docker start vhs_api
```

Kill can be used instead of stop 

Once it's running influx will listen to the default ports 8083 and 8086

## Updating

```bash
$ docker stop vhs_api
$ docker rm vhs_api
$ docker pull vanhack/api
$ ./create.sh
```
