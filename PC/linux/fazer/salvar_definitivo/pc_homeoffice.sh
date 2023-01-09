#!/bin/bash -v

## 1. Chrome
sudo mkdir .chrome
cd .chrome/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo chmod +x google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb -y
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 2. Discord
sudo mkdir .discord
cd .discord/
wget https://dl.discordapp.net/apps/linux/0.0.17/discord-0.0.17.deb
sudo chmod +x discord-0.0.17.deb
sudo dpkg -i discord-0.0.17.deb -y
sudo apt install -f
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 3. Linphone
sudo apt update
sudo apt install linphone -y

## 4. AnyDesk
# sudo mkdir .anydesk
# cd .anydesk/
# wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb
# sudo chmod +x anydesk_6.1.1-1_amd64.deb
# sudo dpkg -i anydesk_6.1.1-1_amd64.deb -y
# sudo apt install -f
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
# cd ..

## 6. Teamviewer
sudo mkdir .teamviewer
cd .teamviewer/
wget https://dl.teamviewer.com/download/linux/version_15x/teamviewer_15.30.3_amd64.deb
sudo chmod +x anydesk_6.1.1-1_amd64.deb
sudo dpkg -i anydesk_6.1.1-1_amd64.deb -y
sudo apt install -f
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 7. Remmina
# sudo apt update
# sudo apt install remmina remmina-common -y
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 8. VSCode
# sudo mkdir .vscode
# cd .vscode/
# wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/code_1.67.2-1652812855_amd64.deb
# sudo chmod +x code_1.67.2-1652812855_amd64.deb
# sudo dpkg -i code_1.67.2-1652812855_amd64.deb -y
# sudo apt install -f -y
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
# cd ..

## 9.  Only Office
sudo mkdir .onlyoffice
cd .wpsoffice/
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
sudo chmod +x onlyoffice-desktopeditors_amd64.deb
sudo dpkg -i onlyoffice-desktopeditors_amd64.deb -y
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..

## 10. Kolourpaint
# sudo apt update
# sudo apt install kolourpaint4 -y
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 11. OBS Studio
# sudo apt update#
# sudo apt install ffmpeg obs-studio -y
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 12. KDEnlive
sudo apt update
sudo apt install kdenlive -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 13. VLC
sudo apt update
sudo apt install vlc -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 14. NextCloud
# sudo apt update
# sudo apt install nextcloud-desktop -y
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 15. Virtualbox
sudo apt update
sudo apt install virtualbox virtualbox-dkms virtualbox-source virtualbox-ext-pack -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 16. Flameshot
sudo apt update
sudo apt install flameshot -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 17. net-tools
sudo apt update
sudo apt install net-tools -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

## 18. Kubuntu Extras
# sudo apt update
# sudo apt install kubuntu-restricted-addons kubuntu-restricted-extras -y
# sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
#
## 19. Samba
sudo apt update
sudo apt install samba samba-common sambatools gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
#
echo "### INSIRA O NOME DO USUARIO SAMBA: "
read  usuariosmb
#
sudo smbpasswd -a $usuariosmb
#
sudo systemctl restart smbd
