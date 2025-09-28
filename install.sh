#!/bin/bash

git clone https://github.com/vmi1994/docker-portainer
cd docker-portainer
bash Install.sh
docker build -t kali .
docker run -it -rm --name kali kali
exit

