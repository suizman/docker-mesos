# Docker Mesos Cluster

### Quick run Mesos cluster with Marathon using docker & docker-compose

### Requirements:

* docker 1.9 (For advanced networking)
* docker-compose


# Usage:
Bring up the cluster

```
$ docker-compose --x-networking up -d
```

Get Mesos/Marathon IPs
```
$ scripts/get_ip.sh
```

Deploy basic app

```
$ scripts/deploy.sh sleepy
```
