#!/bin/bash -x
#########################################################################
# NOME...: Robison Joel
# DATA...: 01/03/2022
# ASSUNTO: Script para instalar o Samba Share e os pacotes FUSE e GVFS.
#########################################################################
#
sudo apt update
#
sudo apt list --upgradable
#
sudo apt upgrade -y
#
sudo apt install samba samba-common sambatools -y
#
sudo apt install gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse -y
#
sudo apt install fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y
#
sudo apt update
#
## INSERE O USUARIO DO SAMBA
echo "### INSIRA O USUARIO SAMBA : "
read  usuariosmb
sudo smbpasswd -a $usuariosmb
#
## RESTART NO SAMBA DAEMON
#
sudo /etc/init.d/smbd restart
