#!/bin/bash

MARATHON=$(docker inspect --format '{{ .NetworkSettings.Networks.dockermesos.IPAddress }}' dockermesos_marathon_1)

  curl -s -X POST http://$MARATHON:8080/v2/apps \
  -d @apps/$1.json \
  -H "Content-type: application/json" | \
  python -m json.tool
