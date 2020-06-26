#!/usr/bin/bash

## Uninstall old version.
sudo -H apt-get remove docker docker-engine docker.io containerd runc

## Install new.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo -H apt-key fingerprint 0EBFCD88
sudo -H add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo -H apt-get update
sudo -H apt-get install -qy docker-ce docker-ce-cli containerd.io

sudo -H usermod -aG docker $USER
newgrp docker