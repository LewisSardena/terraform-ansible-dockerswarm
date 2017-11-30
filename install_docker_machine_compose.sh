#!/bin/bash
sudo yum -y upgrade
sudo yum -y update

# Install Docker Engine

#Add yum utils:

sudo yum install -y yum-utils \
device-mapper-persistent-data \
lvm2

#Add repo:

sudo yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo

#Install:

sudo yum install docker-ce

Add  user to Docker group:

gpasswd -a jenkins docker

#Start and Enable docker

sudo systemctl enable docker
sudo systemctl start docker

#Install Docker-Machine

curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine
sudo chmod +x /tmp/docker-machine
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

#Instal Docker-Compose

sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#Install Ansible

sudo yum -y ansible
