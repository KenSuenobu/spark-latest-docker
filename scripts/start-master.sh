#!/usr/bin/env bash
#
# Starts the spark server in master mode.

if [ -f "/tmp/docker-id" ]; then
  echo "Warning: previous docker tag exists; killing."
  docker kill $(cat /tmp/docker-id)
fi

rm -f /tmp/docker-id

docker pull ksuenobu/spark-latest
DOCKER_ID=$(docker run -d -it --net host --expose 8080 --expose 8081 --expose 7077 --expose 4040 ksuenobu/spark-latest start-master.sh $@)

echo
echo "Spark started; waiting 10 seconds for the Spark master to stabilize."
sleep 10
echo
echo "Spark started as ID ${DOCKER_ID}"

echo "${DOCKER_ID}" > /tmp/docker-id
