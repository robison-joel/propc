#!/bin/bash -x
#
#########################################
##### Script de instalação do KDENLIVE #####
#########################################
#
# Adicona o repositório
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
#
# Atualiza
sudo apt update
#
# instalação do programa 
sudo apt-get install kdenlive -y
#