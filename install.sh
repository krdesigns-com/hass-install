#!/bin/bash
###############################################################
#	  Created by Richard Tirtadji
#   Main installer for Raspbian Buster
# 	Basic script for server
###############################################################
apt-get update && apt-get dist-upgrade -y && apt autoremove -y
apt-get -y install unzip
wget https://github.com/krdesigns-com/raspbian-install/archive/master.zip
unzip /root/master.zip -d /root/
result=`ls -F /root/ | grep /`
mv /root/$result/* /root/
rm -r /root/$result
chmod +x /root/*.sh
chmod +x /root/install/*.sh
chmod +x /root/hass/*.sh
rm /root/master.zip
/root/main.sh
rm /root/main.sh
reboot now