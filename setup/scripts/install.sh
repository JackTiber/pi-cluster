#!/bin/bash

# Update base package cache & packages
sudo apt-get update
sudo apt-get upgrade -yq

# Install Wireshark for monitoring
sudo apt-get install -yq wireshark

# Install Docker
sudo apt-get remove docker docker-engine docker.io -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu disco stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo usermod -aG docker $USER