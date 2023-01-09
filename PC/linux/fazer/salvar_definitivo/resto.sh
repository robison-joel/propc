#!/bin/bash -x
## VSCode
#
mkdir .vscode
cd .vscode/
wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/code_1.67.2-1652812855_amd64.deb
chmod +x code_1.67.2-1652812855_amd64.deb
dpkg -i code_1.67.2-1652812855_amd64.deb
apt install -f -y
apt update ; apt list --upgradable ; apt upgrade -y
cd ..

## Anydesk

## Chrome

### Samba 
cd ~
mkdir tmp
apt update
apt install samba samba-common gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y
apt update ; apt list --upgradable ; apt upgrade -y
#
echo "### INSIRA O NOME DO USUARIO SAMBA: "
read  usuariosmb
#
smbpasswd -a $usuariosmb
#
cd /etc/samba/
cp smb.conf smb.conf.bckp
vim smb.conf
#
systemctl restart smbd
