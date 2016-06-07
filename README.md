# Docker Mesos Cluster

### Quick run Mesos cluster with Marathon using docker & docker-compose

### Requirements:

* docker 1.9+
* docker-compose (V2)


# Usage:
Bring up the cluster

```
$ docker-compose up -d
```

Deploy basic app

```
$ scripts/deploy.sh sleepy
```

```
Access Mesos Master http://localhost:5050
Access Marathon http://localhost:8080
```

# Dev mode

Choose the number of slaves to bring up setting the num_slaves.

```
docker-compose -f docker-mesos-dev.yml up
```

```
Access Mesos Master http://localhost
```
