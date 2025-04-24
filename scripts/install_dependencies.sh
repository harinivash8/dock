#!/bin/bash

cd /home/ec2-user/app

docker stop myapp-container || true
docker rm myapp-container || true
docker rmi myapp:latest || true

docker build -t myapp:latest 
