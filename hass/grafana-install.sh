#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# Docker Grafana for Raspbian Buster
# Basic script for server
###############################################################

# Making Directory for docker container 
mkdir /home/krdesigns/docker/grafana

# Install grafana
docker run -d --user root --restart=always -p 3000:3000 --name="grafana" --net=host -v /home/krdesigns/docker/grafana:/var/lib/grafana grafana/grafana-arm64v8-linux

echo -e "Grafana installed \e[32m[DONE]\033[0m"