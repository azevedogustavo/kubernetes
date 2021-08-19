#!/bin/bash
## install docker ubuntu 18.04

sudo apt update
sudo apt-get --only-upgrade install curl libcurl4 -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y
sudo apt update
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
newgrp docker
sudo systemctl enable docker
