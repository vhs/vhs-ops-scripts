# Grafana

Docker container for Grafana

## Installing

Run create.sh. This will create a docker container and run it. By default it will restart automatically
when docker is restarted.

## Starting and Stopping

```bash
$ docker stop grafana
$ docker start grafana
```

Kill can be used instead of stop 

Once it's running influx will listen to the default port 3000

## Updating

```bash
$ docker stop grafana
$ docker rm grafana
$ docker pull grafana/grafana
$ ./create.sh
```
