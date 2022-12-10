#!/bin/bash

# SCRIPT PADRAO PARA START EM SERVIDORES

#################################################################
# NOME...: Robison Joel
# DATA...: 04/12/2022
# ASSUNTO: Provisionamento de servidor Ubuntu 20.04 com Wordpress
##################################################################

# # 1. PRÉ-REQUISITOS MÍNIMOS
# * SISTEMA: Ubuntu Server 20.04 64bits.
# * REDE...: Conexão com a internet.
# * RAM....: 2 GB.
# * DISCO..: 20 GB.
# * CPU....: 2 Núcleos.

echo " "
echo " "
echo " "
echo "         #################################################         "
echo "      #######################################################      "
echo "   #############################################################   "
echo "#############                                         #############"
echo "##########                                               ##########"
echo "##########   SCRIPT DE PRE-INSTALAÇÃO DE UBUNTU SERVER   ##########"
echo "##########                                               ##########"
echo "#############                                         #############"
echo "   #############################################################   "
echo "      #######################################################      "
echo "         #################################################         "
echo " "
echo " "
echo " "
echo "###############################################################"
echo "###############################################################"
echo "################################################################"
echo " "
echo "###############################################################"
echo "##### INFORME O HOSTNAME DO SERVIDOR "
read -r VAR_HOSTNAME
echo "################################################################"
echo "O Nome do seu servidor será "$VAR_HOSTNAME

## 2. Atualização
# sudo apt update
# sudo apt list --upgradable
# sudo apt upgrade -y

## 3. Identificando a máquina na rede
# echo wordpress > /etc/hostname


## 4. Configura a localização do server
# rm -f /etc/localtime ; ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
# echo America/Sao_Paulo > timezone

