#!/bin/bash -x

sudo apt-get update
#
sudo apt-get upgrade -y
#
#Bibliotecas 32 Bits
#apt-get update && apt-get install lib32z1 libgtk2.0-0:i386 ligglu1-mesa:i386 libxmu6:i386 libidn11:i386
#
#Adicionando repositório
#Notepadqq
sudo add-apt-repository ppa:notepadqq-team/notepadqq -y
#
#Java
sudo add-apt-repository ppa:webupd8team/java -y
#
#Winusb
#sudo add-apt-repository ppa:nilarimogard/webupd8 -y
#
#kodi
#sudo apt-get install software-properties-common -y
#sudo add-apt-repository ppa:team-xbmc/ppa -y
#
#dvdstyler
#sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler -y
#
#Grub Customizer
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#
sudo apt-get update
sudo apt-get upgrade -y
#
#Instalaçao de programas
#Grub Customizer
#sudo apt-get install grub-customizer -y
#
#DVD Styler
#sudo apt install dvdstyler -y
#
#Kodi
##sudo apt-get install kodi -y
#sudo apt-get install kodi-pvr-dev kodi-pvr-argustv kodi-pvr-demo kodi-pvr-dvbviewer kodi-pvr-iptvsimple kodi-pvr-mediaportal-tvserver kodi-pvr-mythtv kodi-pvr-nextpvr kodi-pvr-njoy kodi-pvr-hts kodi-pvr-vdr-vnsi kodi-pvr-vuplus
#
#Java 8
sudo apt-get install oracle-java8-installer -y
#
#kate
#sudo apt-get install kate -y
#
#Wine
#sudo apt-get install wine -y
#
#Virtualbox
#sudo apt-get install virtualbox -y
#
#Libreoffice impress:
#sudo apt-get install libreoffice-impress -y
#
#Audacious
#sudo apt-get install audacious -y
#
#vlc
sudo apt-get install vlc browser-plugin-vlc -y
#Brasero
sudo apt-get install brasero -y
#
#GrSync
sudo apt-get install grsync -y
#
#Gparted
#sudo apt-get install gparted -y
#
#Krusader
#sudo apt-get install krusader -y
#
#Kolourpaint
sudo apt-get install kolourpaint4
#
#Htop
#sudo apt-get install htop -y
#
#Vim
sudo apt-get install vim -y
#
#Notepadqq
sudo apt-get install notepadqq -y
#
#Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update ; sudo apt-get install google-chrome-stable -y
#
#Spotify
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 && echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt-get update && sudo apt-get install spotify-client
#
sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons -y
#sudo apt install kubuntu-restricted-extras kubuntu-restricted-addons -y
#sudo apt install xubuntu-restricted-extras xubuntu-restricted-addons -y
#sudo apt install lubuntu-restricted-extras lubuntu-restricted-addons -y
sudo apt install libdvd-pkg -y
