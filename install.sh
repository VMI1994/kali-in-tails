#!/bin/bash

apt update -y
apt upgrade -yq
git clone https://github.com/vmi1994/docker-portainer
cd docker-portainer
bash Install.sh
docker build -t kali .
docker run -it -rm --name kali kali
exit

