#!/usr/bin/env bash
#
# Starts the spark server in master mode.

docker pull ksuenobu/spark-latest
docker run -d --net host --expose 8080 --expose 8081 --expose 7077 --expose 4040 ksuenobu/spark-latest $@
