# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This build is for the ksuenobu/spark-latest container, which is submitted
# to hub.docker.com.

FROM ubuntu:16.04
MAINTAINER ksuenobu@fastmail.com

ENV PATH="${PATH}:/opt/spark:/opt/spark/bin:/opt/spark/sbin"

RUN apt update && apt upgrade && apt install -y wget software-properties-common && \
    wget http://www-us.apache.org/dist/spark/spark-2.3.0/spark-2.3.0-bin-hadoop2.7.tgz -qO /tmp/spark-2.3.0.tgz && \
    cd /opt && tar -xvzf /tmp/spark-2.3.0.tgz && rm -f /tmp/spark-2.3.0.tgz && \
    mv /opt/spark-2.3.0* /opt/spark && \
    add-apt-repository ppa:webupd8team/java && \
    apt update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt install -y oracle-java8-installer && \
    apt clean
