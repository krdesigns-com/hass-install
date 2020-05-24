#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# Docker + HASS + Portainer for Raspbian Buster
# Basic script for server
###############################################################
# Making Directory for docker container 
mkdir /home/krdesigns/docker/home-assistant

# Make sure its running on the right folder
chown -R krdesigns: /home/krdesigns/docker/

# Installation portainer and watchtower
docker run --name="portainer" -d --restart=always -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /home/krdesigns/docker/portainer:/data  portainer/portainer

# Install home-assistant + Portainer
docker run -id --name="home-assistant" --restart=always -p 8123:8123 --net=host -e "TZ=Asia/Jakarta" -v /home/krdesigns/docker/home-assistant:/config -v /etc/letsencrypt/live:/certificate homeassistant/home-assistant

echo -e "Home-Assistant installed \e[32m[DONE]\033[0m"