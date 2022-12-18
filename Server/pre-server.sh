#!/bin/bash

# SCRIPT PADRAO PARA START EM SERVIDORES

#################################################################
# NOME...: Robison Joel
# DATA...: 04/12/2022, 17/12/2022
# ASSUNTO: Provisionamento de servidor Ubuntu 20.04 com Wordpress
##################################################################

# # 1. PRÉ-REQUISITOS MÍNIMOS
# * SISTEMA: Ubuntu Server 20.04 64bits.
# * REDE...: Conexão com a internet.
# * RAM....: 2 GB.
# * DISCO..: 20 GB.
# * CPU....: 2 Núcleos.

echo "                                                                   "
echo "                                                                   "
echo "                                                                   "
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
echo "                                                                   "
echo "-------------------------------------------------------------------"
echo "                                                                   "
echo "###################################################################"
echo "###################################################################"
echo "###################################################################"
echo "                                                                   "
echo "###################################################################"
echo "##### INFORME O HOSTNAME DO SERVIDOR:"

read -r VAR_HOSTNAME

echo "                                                                   "
echo "###################################################################"
echo "##### INFORME O USUÁRIO DO SISTEMA:"

read -r VAR_USERNAME
echo "                                                                   "
echo "##### INFORME O NOME DO ARQUIVO DE LOG:"

read -r VAR_LOG
VAR_LOGFILE=$VAR_LOG_$(date +%d-%m-%y_%H:%M)

echo "###################################################################"
echo "##### CONFIRME AS INFORMAÇÕES ANTES DE COMEÇAR "
echo "                                                                   "
echo "O Nome do seu servidor será "$VAR_HOSTNAME
echo "                                                                   "
echo "O Nome do seu usuário será "$VAR_USERNAME
echo "                                                                   "
echo "O Nome do seu usuário será "$VAR_LOGFILE
echo "                                                                   "
echo "As informações estão corretas: "
#
read -r VAR_CONFIRMA
#
if [ "$VAR_CONFIRMA" = n ]; then

    ./pre-server.sh

elif [ "$VAR_CONFIRMA" = N ]; then

    ./pre-server.sh

else 

    echo "INICIANDO EM 3...2...1..."
    sleep 3s
fi

sudo apt install figlet -y
# sudo apt install cowsay -y

echo "###################################################################"
figlet VIM 
echo "###################################################################"
echo "(SIM = y/s ou NÃO = n/N)"
#
read -r VAR_VIM
#
if [ $VAR_VIM = y ]; then

    sudo apt install vim -y

elif [ $VAR_VIM = s ]; then

    sudo apt install vim -y

else

    echo "Vocẽ escolheu não instalar o vim...continuando!"

fi
#
# echo "###################################################################"
# figlet "Atualizando..."
# ## 2. Atualização
# sudo apt update
# sudo apt list --upgradable
# sudo apt upgrade -y

## 3. Identificando a máquina na rede
# echo wordpress > /etc/hostname

## 4. Configura a localização do server
# rm -f /etc/localtime ; ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
# echo America/Sao_Paulo > timezone