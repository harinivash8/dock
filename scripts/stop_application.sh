
#!/bin/bash
if [ "$(sudo docker ps -q -f name=dock-app)" ]; then
  sudo docker stop dock-app
  sudo docker rm dock-app
fi
