#!/bin/bash
#
sudo apt update
#
sudo apt install neofetch -y
#
echo "Digite o usuario: "
read userneo
#
sudo cp config.conf /home/$userneo/.config/neofetch/
#

