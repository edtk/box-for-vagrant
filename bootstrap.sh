#!/usr/bin/env bash

# Install Git
sudo apt-get update && sudo apt-get install -y \

  git \
  jq

# Install Docker
curl -sSL https://get.docker.com/ | sh

# Install Docker compose
curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Настроить PS1 prompt
sed -i -e '$aPS1='\''\\s->\\W\\$ '\' /home/vagrant/.bashrc

# Создать группу docker и добавить в неё пользователя vagrant
sudo usermod -aG docker vagrant
