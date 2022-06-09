#!/bin/bash -x
#
##########################################
##### Script de instalação do systemback #####
##########################################
#
# Adicona o repositório
sudo add-apt-repository ppa:nemh/systemback -y
#
# Atualiza
sudo apt update
#
# \instalação do programa 
sudo apt-get install systemback -y
#