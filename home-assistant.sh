#!/bin/bash
###############################################################
#	  Created by Richard Tirtadji
#   Main installer for Raspbian Buster
# 	Basic script for server
###############################################################
# Begin Installation
/root/install/user-install.sh

# Install NGINX
/root/install/nginx-install.sh

# Install Fail2Ban
/root/install/fail2ban-install.sh

# Install Letsencrypt
/root/install/certbot-install.sh

# Install Docker
/root/install/docker-install.sh

# Install Samba
/root/hass/samba-install.sh

# Install HASS
/root/hass/hass-install.sh

echo -e "HASS.core Server installation \e[32m[DONE]\033[0m"