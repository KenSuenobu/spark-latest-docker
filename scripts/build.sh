#!/usr/bin/env bash
#
# Script to build Docker Container for spark-latest

docker build -t ksuenobu/spark-latest .

docker save ksuenobu/spark-latest > spark-latest.tar
gzip spark-latest.tar
mv spark-latest.tar.gz /tmp
