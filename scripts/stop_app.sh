#!/bin/bash
CONTAINER_ID=$(sudo docker ps -q --filter ancestor=my-flask-app)
if [ ! -z "$CONTAINER_ID" ]; then
  sudo docker stop $CONTAINER_ID
  sudo docker rm $CONTAINER_ID
fi
