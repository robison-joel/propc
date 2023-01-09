#!/bin/bash -v

## 2. Discord
sudo mkdir .discord
sudo chmod -R 777 .discord/
cd .discord/
wget https://dl.discordapp.net/apps/linux/0.0.22/discord-0.0.22.deb
sudo chmod +x discord-0.0.22.deb
sudo dpkg -i discord-0.0.22.deb
sudo apt install -f
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 8. VSCode
sudo mkdir .vscode
cd .vscode/
wget https://az764295.vo.msecnd.net/stable/74b1f979648cc44d385a2286793c226e611f59e7/code_1.71.2-1663191218_amd64.deb
sudo chmod +x code_1.71.2-1663191218_amd64.deb
sudo dpkg -i code_1.71.2-1663191218_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 9.  Only Office
sudo mkdir .onlyoffice
cd .wpsoffice/
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
sudo chmod +x onlyoffice-desktopeditors_amd64.deb
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 10. Kolourpaint
sudo apt update
sudo apt install kolourpaint4 -y

## 11. OBS Studio
sudo apt update#
sudo apt install ffmpeg obs-studio -y

## 15. Virtualbox
sudo apt update
sudo apt install virtualbox virtualbox-dkms virtualbox-source virtualbox-ext-pack -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 16. Flameshot
sudo apt update
sudo apt install flameshot -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 18. ubuntu Extras
sudo apt update
sudo apt install ubuntu-restricted-addons ubuntu-restricted-extras -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 19. Samba
sudo apt update
sudo apt install samba samba-common sambatools gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
#
echo "#######################"
echo "####               ####"
echo "##  INSIRA O NOME    ##"
echo "## DO USUARIO SAMBA  ##"
echo "####               ####"
echo "#######################"
read  usuariosmb
#
sudo smbpasswd -a $usuariosmb
#
sudo systemctl restart smbd
