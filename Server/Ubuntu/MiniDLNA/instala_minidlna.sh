#!/bin/bash -x
#########################################################################
# NOME...: Robison Joel
# DATA...: 02/03/2022
# ASSUNTO: Script que instala o Servidor de Midia no Ubuntu Server 20.04.
#########################################################################
#
# FONTE: https://www.homemediaserver.ru/en/index.htm
#
## PRE INSTALACAO
#sudo apt update
#sudo apt list --upgradable 
#sudo apt upgrade -y
#
## Coleta o nome do usuario para criacao da pasta.
echo "Digite o seu usuario: "
read usuariodlna
#
## INSTALA O MINIDLNA.
sudo apt-get install minidlna -y
#
## Cria e entra na pasta .minidlna na home do usuario.
sudo mkdir /home/$usuariodlna/.minidlna
cd /home/$usuariodlna/.minidlna
sudo mkdir temporario
cd temporario
#
#
sudo cp /etc/minidlna.conf .
echo "Edite o arquivo /etc/minidlna.conf conforme o arquivo de exemplo" 
echo "Qual editor vai querer usar?"
read txteditor
sudo $txteditor minidlna.conf
sudo cp -rf minidlna.conf /etc
sudo shutdown -r now

