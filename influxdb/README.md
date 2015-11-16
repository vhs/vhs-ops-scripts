# InfluxDB

DB for stats and other fun stuff.

## Installing

Run create.sh then symlink (or copy) the upstart.conf to /etc/init. Since the upstart job is a symlink you will have to manually
reload the upstart config

```bash
$ ./create.sh
$ ln -s <path>/upstart.conf /etc/init/influxdb.conf
$ initctl reload-configuration
```

## Starting and Stopping

```bash
$ start influxdb
$ stop influxdb
```

Once it's running influx will listen to the default ports 8083 and 8086
