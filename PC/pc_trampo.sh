#!/bin/bash -v
#
# =====================================================================================================
# | TITULO..: SETUP DO SERVICO
# | CONTEUDO: Script da instalação dos programas do setup de trabalho.
# | DATA....: 07/06/2022 - 23:10hs
# | AUTOR...: Robison Joel - http://robison-joel.github.io
# =====================================================================================================
#
# 1. Chrome --------------------------------------------------
sudo mkdir .chrome
cd .chrome/
sudo sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo chmod +x google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 2. Franz --------------------------------------------------
sudo mkdir .franz
cd .franz/
sudo wget https://github.com/meetfranz/franz/releases/download/v5.9.2/franz_5.9.2_amd64.deb
sudo chmod +x franz_5.9.2_amd64.deb
sudo dpkg -i franz_5.9.2_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 3. Discord --------------------------------------------------
sudo mkdir .discord
cd .discord/
sudo wget https://dl.discordapp.net/apps/linux/0.0.17/discord-0.0.17.deb
sudo chmod +x discord-0.0.17.deb
sudo dpkg -i discord-0.0.17.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 4. Linphone --------------------------------------------------
sudo apt update
sudo apt install linphone -y
##
#
# 5. AnyDesk --------------------------------------------------
sudo mkdir .anydesk
cd .anydesk/
sudo wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb
sudo chmod +x anydesk_6.1.1-1_amd64.deb
sudo dpkg -i anydesk_6.1.1-1_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 6. Teamviewer --------------------------------------------------
sudo mkdir .teamviewer
cd .teamviewer/
sudo wget https://dl.teamviewer.com/download/linux/version_15x/teamviewer_15.30.3_amd64.deb
sudo chmod +x anydesk_6.1.1-1_amd64.deb
sudo dpkg -i anydesk_6.1.1-1_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 7. Remmina --------------------------------------------------
sudo apt update
sudo apt install remmina remmina-common -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 8. VSCode --------------------------------------------------
sudo mkdir .vscode
cd .vscode/
sudo wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/code_1.67.2-1652812855_amd64.deb
sudo chmod +x code_1.67.2-1652812855_amd64.deb
sudo dpkg -i code_1.67.2-1652812855_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 9.  WPS Office --------------------------------------------------
sudo mkdir .wpsoffice
cd .wpsoffice/
sudo wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10976/wps-office_11.1.0.10976.XA_amd64.deb
sudo chmod +x wps-office_11.1.0.10976.XA_amd64.deb
sudo dpkg -i wps-office_11.1.0.10976.XA_amd64.deb
sudo apt install -f -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
cd ..
##
#
# 10. Kolourpaint --------------------------------------------------
sudo apt update
sudo apt install kolourpaint -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 11. OBS Studio --------------------------------------------------
sudo apt update#
sudo apt install ffmpeg obs-studio -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 12. KDEnlive --------------------------------------------------
sudo apt update
sudo apt install kdenlive -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 13. VLC --------------------------------------------------
sudo apt update
sudo apt install vlc -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 14. NextCloud --------------------------------------------------
sudo apt update
sudo apt install nextcloud-desktop -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 15. Virtualbox --------------------------------------------------
sudo apt update
sudo apt install virtualbox virtualbox-dkms virtualbox-source virtualbox-ext-pack -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 16. Flameshot --------------------------------------------------
sudo apt update
sudo apt install flameshot -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 17. net-tools --------------------------------------------------
sudo apt update
sudo apt install net-tools -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 18. Kubuntu Extras --------------------------------------------------
sudo apt update
sudo apt install kubuntu-restricted-addons kubuntu-restricted-extras -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
##
#
# 19. Samba --------------------------------------------------
cd ~
sudo mkdir tmp
sudo apt update
sudo apt install samba samba-common gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y
sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
#
echo "### INSIRA O NOME DO USUARIO SAMBA: "
read  usuariosmb
#
sudo smbpasswd -a $usuariosmb
#
cd /etc/samba/
sudo cp smb.conf smb.conf.bckp
sudo vim smb.conf
#
sudo systemctl restart smbd
#
sudo reboot
