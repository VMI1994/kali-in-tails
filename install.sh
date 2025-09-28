#!/bin/bash

clear
echo "Updating system"
apt update -y
clear
echo "Installing Docker"
git clone https://github.com/vmi1994/docker-portainer
cd docker-portainer
bash Install.sh
clear
echo "updating torrc"
sudo echo "ExitNodes {ru}" >> /etc/tor/torrc
sudo echo "StrictNodes 1" >> /etc/tor/torrc
clear
echo "Start Tor and then hit enter"
read junk
clear
echo "building the kali docker image"
sudo docker build -t kali .
clear
echo "Starting kali linux"
sudo docker run -it -rm --name kali kali
exit

