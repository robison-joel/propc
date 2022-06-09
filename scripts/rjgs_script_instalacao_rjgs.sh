#!/bin/bash -x
#
######################################################################################
######################################################################################
#### Nota do autor #####################################################################
#### Este script está dividido em três partes. No primeiro bloco atualiza e adiciona repositórios. ###
#### A segunda é pra atualizar e a terceira é pra instalar os programas. ######################
#####################################################################################
######################################################################################
######################################################################################
#
# Add repositórios
sudo add-apt-repository ppa:webupd8team/java -y
#sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo add-apt-repository ppa:nemh/systemback -y
#sudo add-apt-repository ppa:noobslab/themes -y
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo add-apt-repository ppa:cdemu/ppa -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#
sudo apt-get update
#
sudo apt list --upgradable
#
sudo apt-get upgrade -y
#
sudo apt-get update
#
#Samba
sudo apt-get install samba -y
#
#Unrar
sudo apt-get install unrar -y
#
#Hollywood
#sudo apt-get install hollywood -y
#
#Java 8 
sudo apt-get install oracle-java8-installer -y
#
#Grub Customizer
sudo apt-get install grub-customizer -y
#
#Kolourpaint
sudo apt-get install kolourpaint4
#
#kate
#sudo apt-get install kate -y
#
#Wine
sudo apt-get install wine -y
#
#Virtualbox
sudo apt-get install virtualbox -y
#
#Libreoffice
sudo apt-get install libreoffice-impress -y
#
#Audacious
sudo apt-get install audacious -y
#
#vlc
#sudo apt-get install vlc browser-plugin-vlc -y
#
#Gparted
#sudo apt-get install gparted -y
#
#Krusader
#sudo apt-get install krusader -y
#
#Htop
#sudo apt-get install htop -y
#
#Vim
sudo apt-get install vim -y
#
#Kdenlive...:
sudo apt-get install kdenlive -y
#
#Systemback
sudo apt-get install systemback -y
#
#Tema violeta-comeback
#sudo apt-get install violet-comeback-theme -y
#
#WinUSB
sudo apt-get install woeusb -y
#
#DVD Styler
sudo apt install dvdstyler -y
#
#Brasero
sudo apt-get install brasero -y
#
#GrSync
sudo apt-get install grsync -y
#
#Spotify
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 && echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt-get update && sudo apt-get install spotify-client -y
#
#Kodi
sudo apt-get install software-properties-common -y
sudo apt-get install kodi -y
sudo apt-get install kodi-pvr-dev kodi-pvr-argustv kodi-pvr-demo kodi-pvr-dvbviewer kodi-pvr-iptvsimple kodi-pvr-mediaportal-tvserver kodi-pvr-mythtv kodi-pvr-nextpvr kodi-pvr-njoy kodi-pvr-hts kodi-pvr-vdr-vnsi kodi-pvr-vuplus -y
#
#CDEmu
sudo apt-get install gcdemu cdemu-client -y
#
#OpenSSH
#sudo apt-get install openssh-server -y
#sudo apt-get install openssh-client -y
#
#Google Chrome
get -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
sudo apt-get update ; sudo apt-get install google-chrome-stable -y
#
#Extras
#sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y
sudo apt install kubuntu-restricted-extras kubuntu-restricted-addons -y
#sudo apt install xubuntu-restricted-extras xubuntu-restricted-addons -y
#sudo apt install lubuntu-restricted-extras lubuntu-restricted-addons -y
sudo apt-get install lib32z1 libgtk2.0-0:i386 ligglu1-mesa:i386 libxmu6:i386 libidn11:i386 -y
#
