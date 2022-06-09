#!/bin/bash -x
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                           #
#	Script para a instalação e configuração do SAMBA.       #
#                                                           #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
sudo apt update
#
sudo apt install samba -y 
#
sudo smbpasswd -a robisonjoel
#
sudo gedit /etc/samba/smb.conf
#
sudo apt update
#
# FIM
