#!/usr/bin/env bash
#
# Script to deploy to Docker Container to hub.docker.com

docker login --username=${DOCKER_USERNAME} --password=${DOCKER_PASSWORD}

