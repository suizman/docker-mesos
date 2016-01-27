#/bin/bash

for i in master marathon slave; do
  URL=$(docker inspect --format '{{ .NetworkSettings.Networks.dockermesos.IPAddress }}' dockermesos_$i\_1)
  echo -e "$i: http://$URL:PORT"
done

echo -e "Mesos Master port is 5050 and Marathon 8080"
