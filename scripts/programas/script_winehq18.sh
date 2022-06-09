#!/bin/bash
#
# Script para instalar o WineHQ no Ubuntu 19.10
#
mkdir .wine
#
cd .wine
#
sudo dpkg --add-architecture i386
#
wget -nc https://dl.winehq.org/wine-builds/winehq.key
#
sudo apt-key add winehq.key
#
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' 
#
sudo apt update
#
sudo apt install --install-recommends winehq-stable -y
#

