#!/bin/bash

# Update base package cache & packages
sudo apt-get update
sudo apt-get upgrade -yq

# Install Wireshark for monitoring
sudo apt-get install -yq wireshark

# Disable Firewall during install
sudo ufw disable