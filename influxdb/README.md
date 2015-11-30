# InfluxDB

DB for stats and other fun stuff.

## Installing

Run create.sh. This will create a docker container and run it. By default it will restart automatically
when docker is restarted.

## Starting and Stopping

```bash
$ docker stop influxdb
$ docker start influxdb
```

Kill can be used instead of stop 

Once it's running influx will listen to the default ports 8083 and 8086

## Updating

```bash
$ docker stop influxdb
$ docker rm influxdb
$ docker pull tutum/influxdb
$ ./create.sh
```
