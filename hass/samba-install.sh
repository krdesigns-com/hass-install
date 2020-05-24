#!/bin/bash
###############################################################
# Created by Richard Tirtadji
#
#
# Samba-Install for for Raspbian Buster
# Basic script for server
###############################################################
PASS=$1

while [[ $PASS = "" ]]; do
  read -p "Your Samba Password: " PASS
done

apt install samba -y

mkdir /home/krdesigns/docker
chown -R krdesigns: /home/krdesigns/docker

cat <<EOF >>/etc/samba/smb.conf
[krdesigns]
  comment = Samba for hassio
  path = /home/krdesigns
  read only = no
  browsable = yes
  writeable = yes
  guest ok = no
  create mask = 0644
  directory mask = 0755
  force user = root
EOF

echo -e "$PASS\n$PASS" | smbpasswd -s -a krdesigns

service smbd restart
ufw allow Samba

echo -e "Samba Installed \e[32m[DONE]\033[0m"