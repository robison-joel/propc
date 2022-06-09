#!/bin/bash 
#
#
##########################################################################################################################################
#
#   Script que instala uma série de programas:
#       
#       1- Audacious (Player de Músicas)
#
sudo apt install audicious apache2 gedit kolourpaint4 libreoffice net-tools samba openssh-server openssh-client supertux synaptic unrar vim virtualbox virtualbox-ext-pack vlc -y && sudo apt update
#
#       2- Apache (Server de http)
#
sudo apt install apache2 -y
#
#       3- Gedit (Pra quando der preguiça do vim)
#
sudo apt install gedit -y
#
#       4- GIMP (Porque eu ainda vou aprender) 
#
sudo apt install gimp -y
#
#       5- Kate (Porque eu gosto) 
#
sudo apt install kate -y
#
#       6- Kio Grive
#
#sudo apt install  -y
#
#       7- Kolourpaint (basicão)
#
sudo apt install kolourpaint4 -y
#
#       8- Ktorrent (Torrent)
#
sudo apt install ktorrent -y
#
#       9- Libreoffice
#
sudo apt install libreoffice -y
#sudo apt libreoffice-l10n-ptbr -y
#
#      10- Net Tools
#
sudo apt install net-tools -y
#
#      11- Samba
#
sudo apt install samba -y
sudo smbpasswd -a robisonjoel
sudo gedit /etc/sama/smb.conf
#
#      12- SSH
#
sudo apt install openssh-server -y
sudo apt install openssh-client -y
#
#      13- Supertux
#
sudo apt install supertux -y
#
#      14- Synaptic
#
sudo apt install synaptic -y
#
#      15- Unrar
#
sudo apt install unrar -y
#
#      16- Vim
#
sudo apt install vim -y
#
#      17- Virtualbox
#
sudo apt install virtualbox -y
sudo apt install virtualbox-ext-pack -y
#
#      18- VLC
#
sudo apt install vlc -y
#
#   Fonte externa
#
#      19- DropBox
#
#      20- Snes9X
#
#      21- Teamviewer
#
#      22- VisualStudioCode
#
#      23- WoeUSB
#
#sudo add-apt-repository ppa:nilarimogard/webupd8 -y
#sudo apt update
#sudo apt install woeusb -y
#
#      24- Contas Online
#
#      25- Wine
#
#sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' 
#sudo apt install --install-recommends winehq-stable
#sudo dpkg -i libfaudio0_19.07-0~bionic_amd64.deb libfaudio0_19.07-0~bionic_i386.deb
#sudo apt --fix-broken install
#sudo dpkg --add-architecture i386
#wget -nc https://dl.winehq.org/wine-builds/winehq.key
#sudo apt-key add winehq.key
#
#################################################################################################################################       
