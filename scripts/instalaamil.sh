#!/bin/bash

sudo apt-get update

sudo apt-get install kate grsync vlc brasero konqueror htop vim virtualbox kolourpaint4 samba hollywood audacious remmina ubuntu-restricted-extras ubuntu-restricted-addons kubuntu-restricted-extras kubuntu-restricted-addons xubuntu-restricted-extras xubuntu-restricted-addons libdvd-pkg

sudo apt-get upgrade && sudo apt-get update

# JAVA
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer
# WINE
sudo add-apt-repository ppa:ubuntu-wine/ppa-y
sudo apt-get update
sudo apt-get install wine
# WINUSB
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-get update
sudo apt-get install winusb
#SYSTEMBACK
sudo apt-add-repository ppa:nemh/systemback -y
sudo apt update
sudo apt install systemback
