
#!/bin/bash
cd /home/ec2-user/dock
sudo docker build -t dock-app .
sudo docker run -d --name dock-app -p 80:80 dock-app
