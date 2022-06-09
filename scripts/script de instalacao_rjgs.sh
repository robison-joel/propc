#!/bin/bash

#kate.......:
#sudo apt-get install kate
#Wine:......:
sudo apt-get install wine -y
#Virtualbox.:
#sudo apt-get install virtualbox
#Libreoffice:
sudo apt-get install libreoffice-impress -y
#Audacious..:
sudo apt-get install audacious -y
#vlc........:
sudo apt-get install vlc browser-plugin-vlc -y
#Gparted....:
#sudo apt-get install gparted
#Krusader...:
#sudo apt-get install krusader
#Htop
sudo apt-get install htop -y
#Remmina
sudo apt-get install remmina -y
#Vim
#sudo apt-get install vim



sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get update

#Java 8 
#PPA do WebUpd8:
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update 
sudo apt-get install oracle-java8-installer -y

#Notepadqq
#Repositório:
#sudo add-apt-repository ppa:notepadqq-team/notepadqq
#sudo apt-get update
#sudo apt-get install notepadqq 

#WinUSB
#Repositório: 
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-get update
sudo apt-get install winusb -y

#Google Chrome
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' 
#sudo apt-get update ; sudo apt-get install google-chrome-stable -y

#sudo apt install ubuntu-restricted-extras ubuntu-restricted-addons
sudo apt install kubuntu-restricted-extras kubuntu-restricted-addons -y
#sudo apt install xubuntu-restricted-extras xubuntu-restricted-addons
#sudo apt install lubuntu-restricted-extras lubuntu-restricted-addons
sudo apt install libdvd-pkg

#Bibliotecas 32 Bits
apt-get install lib32z1 libgtk2.0-0:i386 ligglu1-mesa:i386 libxmu6:i386 libidn11:i386 -y

#DVD Styler
sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler -y
sudo apt update
sudo apt install dvdstyler -y

#Spotify



