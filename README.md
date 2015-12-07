# Docker Mesos Cluster

### Quick run Mesos cluster with Marathon using docker & docker-compose

### Requirements:

*  docker
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
