#!/bin/bash

MARATHON=$(docker exec -it dockermesos_marathon_1 ip addr show |grep -w inet |grep -v 127.0.0.1|awk '{ print $2}'| cut -d "/" -f 1)
curl -s -X POST http://$MARATHON:8080/v2/apps -d @apps/$1.json -H "Content-type: application/json" | python -m json.tool
