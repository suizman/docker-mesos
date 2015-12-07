#/bin/bash

for i in master marathon; do
URL=$(docker exec -it dockermesos_$i\_1 ip addr show |grep -w inet |grep -v 127.0.0.1|awk '{ print $2}'| cut -d "/" -f 1)
echo -e "$i: http://$URL:PORT"
done
echo -e "Mesos Master port is 5050 and Marathon 8080"
