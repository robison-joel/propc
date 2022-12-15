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

VAR_AGORA=$(date +%d-%m-%y_%H:%M) >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "         #################################################         " >> log_$VAR_AGORA
echo "      #######################################################      " >> log_$VAR_AGORA
echo "   #############################################################   " >> log_$VAR_AGORA
echo "#############                                         #############" >> log_$VAR_AGORA
echo "##########                                               ##########" >> log_$VAR_AGORA
echo "##########   SCRIPT DE PRE-INSTALAÇÃO DE UBUNTU SERVER   ##########" >> log_$VAR_AGORA
echo "##########                                               ##########" >> log_$VAR_AGORA
echo "#############                                         #############" >> log_$VAR_AGORA
echo "   #############################################################   " >> log_$VAR_AGORA
echo "      #######################################################      " >> log_$VAR_AGORA
echo "         #################################################         " >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "-------------------------------------------------------------------" >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "###################################################################" >> log_$VAR_AGORA
echo "##### INFORME O HOSTNAME DO SERVIDOR:" >> log_$VAR_AGORA
echo "##### INFORME O HOSTNAME DO SERVIDOR:"
read -r VAR_HOSTNAME  >> log_$VAR_AGORA
echo $VAR_HOSTNAME >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "###################################################################" >> log_$VAR_AGORA
echo "##### INFORME O USUÁRIO DO SISTEMA:" >> log_$VAR_AGORA
echo "##### INFORME O USUÁRIO DO SISTEMA:"
read -r VAR_USERNAME >> log_$VAR_AGORA
echo $VAR_USERNAME >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "###################################################################" >> log_$VAR_AGORA
echo "##### CONFIRME AS INFORMAÇÕES ANTES DE COMEÇAR " >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "O Nome do seu servidor será: "$VAR_HOSTNAME >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "O Nome do seu usuário será: "$VAR_USERNAME >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "O Nome do seu arquivo de log será: "log_$VAR_AGORA >> log_$VAR_AGORA
echo "                                                                   " >> log_$VAR_AGORA
echo "###################################################################" >> log_$VAR_AGORA
echo "##### INICIO DO PROCESSO DE ATUALIZAÇÃO #####" >> log_$VAR_AGORA
echo "###################################################################" >> log_$VAR_AGORA
echo "                                             " >> log_$VAR_AGORA
echo "SUDO APT UPDATE ###################################################" >> log_$VAR_AGORA
sudo apt update >> log_$VAR_AGORA
echo "                                             " >> log_$VAR_AGORA
echo "APT LIST --UPGRADABLE #############################################" >> log_$VAR_AGORA
apt list --upgradable >> log_$VAR_AGORA
echo "                                             " >> log_$VAR_AGORA
echo "APT LIST --UPGRADABLE #############################################" >> log_$VAR_AGORA
sudo apt full-upgrade -y >> log_$VAR_AGORA
echo "                                             " >> log_$VAR_AGORA
echo "###################################################################" >> log_$VAR_AGORA



## 2. Atualização
# sudo apt update >> log_$VAR_AGORA
#sudo apt list --upgradable >> log_$VAR_AGORA
#sudo apt upgrade -y >> log_$VAR_AGORA
## 3. Identificando a máquina na rede
# echo wordpress > /etc/hostname


## 4. Configura a localização do server
# rm -f /etc/localtime ; ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
# echo America/Sao_Paulo > timezone
