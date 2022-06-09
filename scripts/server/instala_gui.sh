#!/bin/bash
#
# Script para instalação de programas e afins em um pc que terá interface gráfica.
#
# Rotina de atualização
#
sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y
#
# Instala a interface gráfica.
# sudo apt install xubuntu-core
# sudo apt install kubuntu
# sudo apt install gnome-shell
# sudo apt install 
#
# SSH   
sudo apt install openssh-client openssh-server -y
#
# VIM
sudo apt install vim -y
#
# SAMBA
sudo apt install samba -y
sudo smbpasswd -a robisonjoel 
sudo vim /etc/samba/smb.conf
#
# APACHE
sudo apt install apache2 -y
sudo chmod 777 /var/www/html/
sudo chmod 777 /var/www/html/index.html
#
# HTOP
sudo apt install htop -y
#
# NET TOOLS
sudo apt install net-tools -y
#
# Rotina de atualização
sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y
#
# Limpa a tela
clear
#
# Apresenta a situação dos programas recém instalados
sudo apt update