#!/bin/bash
cd /home/ec2-user/my-app
sudo docker build -t my-flask-app .
sudo docker run -d -p 80:5000 my-flask-app
