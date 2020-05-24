#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# Docker TasmoAdmin for Raspbian Buster
# Basic script for server
###############################################################
# Making Directory for docker container 
mkdir /home/krdesigns/docker/tasmoadmin

# Install TasmoAdmin
docker run -d --restart=always --name=tasmoadmin -v /home/krdesigns/docker/tasmoadmin/data:/data -p 9003:80 raymondmm/tasmoadmin

echo -e "TasmoAdmin installed \e[32m[DONE]\033[0m"