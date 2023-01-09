#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                         #
#   Script para a instalação e configuração do APACHE.    #
#                                                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

sudo apt update
#
sudo apt install apache2 -y 
#
sudo chmod 777 /var/www/
#
sudo chmod 777 /var/www/html/
#
sudo chmod 777 /var/www/html/index.html
#
sudo apt update
#
echo Tchau

