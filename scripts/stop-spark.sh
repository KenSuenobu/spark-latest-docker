#!/usr/bin/env bash
#
# Stops the Docker Container

if [ -f "/tmp/docker-id" ]; then
  echo "Stopping Spark Docker Container ..."
  docker kill $(cat /tmp/docker-id)
  sleep 3
  echo "Done."
else
  echo "No docker container ID found.  Use 'docker ps' to find it (if still running)"
  echo "and use the 'docker kill' command to kill the running process."
  echo
  echo "Starting docker keeps an ID stored in /tmp/docker-id"
  echo "Please do not delete it!"
fi
