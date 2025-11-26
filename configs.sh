#!/bin/bash

# exchange configs
sudo cp ~/Projects/omarchy-supplement/files/hosts /etc/hosts
echo "exchanged hosts file"

cp ~/Projects/omarchy-supplement/scripts/* ~/Scripts/
echo "copied custom scripts"

# open firewall for localsend
sudo ufw allow 53317/tcp
sudo ufw allow 53317/udp
echo "fireall adjusted for localsend"
