#!/bin/bash
#
#   Script para instalar o controle de XBOX no ubuntu/mint
#
sudo apt-add-repository ppa:rael-gc/ubuntu-xboxdrv
#
sudo apt-get update
#
sudo apt-get install ubuntu-xboxdrv -y
#
sudo service xboxdrv restart
