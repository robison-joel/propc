#!/bin/bash -x
#
sudo apt update ; sudo apt list --upgradable ; sudo apt upgrade -y
#
sudo apt install samba samba-common samba-vfs-modules -y
#
sudo apt install gvfs gvfs-common gvfs-fuse gvfs-daemons -y
#
sudo apt install fuse fuse-convmvfs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuse-zip fusefat fuseiso fusesmb -y
#
sudo apt update
#
echo "Insira o nome do usuário: "
read usersmb
#
sudo smbpasswd -a $usersmb
#
sudo gedit /etc/samba/smb.conf
#
sudo /etc/init.d/smbd restart
