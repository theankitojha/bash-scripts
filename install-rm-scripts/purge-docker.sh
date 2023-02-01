#!/bin/bash
######################################################################
##
##   Purge Docker (Ubuntu) Script
##   Written By: Ankit Ojha
##   URL: ankitojha.com.np
##   Update on: Jan 9, 2023
##
######################################################################

sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce  

sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
