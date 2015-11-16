# Grafana

Docker container for Grafana

## Installing

Run create.sh then symlink (or copy) the upstart.conf to /etc/init. Since the upstart job is a symlink you will have to manually
reload the upstart config

```bash
$ ./create.sh
$ ln -s <path>/upstart.conf /etc/init/grafana.conf
$ initctl reload-configuration
```

## Starting and Stopping

```bash
$ start grafana
$ stop grafana
```
