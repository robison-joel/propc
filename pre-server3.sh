#!/bin/bash

# SCRIPT PADRAO PARA START EM SERVIDORES

#########################################################################
# NOME...: Robison Joel
# DATA...: 04/12/2022, 17/12/2022, 22/12/2022
# ASSUNTO: Provisionamento de servidor Ubuntu 20.04 
#########################################################################

# # 1. PRÉ-REQUISITOS MÍNIMOS
# * SISTEMA: Ubuntu Server 20.04 64bits.
# * REDE...: Conexão com a internet.
# * RAM....: 2 GB.
# * DISCO..: 20 GB.
# * CPU....: 2 Núcleos.

# Criando a pasta de log.
sudo mkdir log/
# Setando permissões na pasta de logs.
sudo chmod -R 777 log/
# Criando o arquivo de log.
VAR_LOGFILE=log/pre-server_$(date +%d-%m-%Y)

echo "Instalando pacotes necessários...AGUARDE!"# >> $VAR_LOGFILE
echo "Instalando o neofetch"# >> $VAR_LOGFILE
#
sudo apt neofetch -y # >> $VAR_LOGFILE
#
echo "Instalando o figlet"# >> $VAR_LOGFILE
#
sudo apt install figlet -y # >> $VAR_LOGFILE
# 
echo "Instalando o cowsay" # >> $VAR_LOGFILE
#
sudo apt install cowsay -y # >> $VAR_LOGFILE
#
echo "                                                                   "# >> $VAR_LOGFILE
echo "         #################################################         "# >> $VAR_LOGFILE
echo "      #######################################################      "# >> $VAR_LOGFILE
echo "   #############################################################   "# >> $VAR_LOGFILE
echo "#############                                         #############"# >> $VAR_LOGFILE
echo "##########                                               ##########"# >> $VAR_LOGFILE
echo "##########   SCRIPT DE PRE-INSTALAÇÃO DE UBUNTU SERVER   ##########"# >> $VAR_LOGFILE
echo "##########                                               ##########"# >> $VAR_LOGFILE
echo "#############                                         #############"# >> $VAR_LOGFILE
echo "   #############################################################   "# >> $VAR_LOGFILE
echo "      #######################################################      "# >> $VAR_LOGFILE
echo "         #################################################         "# >> $VAR_LOGFILE
echo "                                                                   "# >> $VAR_LOGFILE
echo "###################################################################"# >> $VAR_LOGFILE
echo "-------------------------------------------------------------------"# >> $VAR_LOGFILE
echo "###################################################################"# >> $VAR_LOGFILE
echo "                                                                   "# >> $VAR_LOGFILE
echo "###################################################################"# >> $VAR_LOGFILE
echo "##### INFORME O HOSTNAME DO SERVIDOR:                              "# >> $VAR_LOGFILE
#
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
echo "###################################################################"
echo "-------------------------------------------------------------------"
echo "###################################################################"
echo "                                                                   "
echo "###################################################################"
echo "##### INFORME O HOSTNAME DO SERVIDOR:"
#
read -r VAR_HOSTNAME # >> $VAR_LOGFILE
#
echo "                                                                   " # >> $VAR_LOGFILE
echo "###################################################################" # >> $VAR_LOGFILE
echo "##### INFORME O USUÁRIO DO SISTEMA:                                " # >> $VAR_LOGFILE
echo "                                                                   "
echo "###################################################################"
echo "##### INFORME O USUÁRIO DO SISTEMA:                                "
#
read -r VAR_USERNAME # >> $VAR_LOGFILE
#
echo "                                                                   " # >> $VAR_LOGFILE
echo "###################################################################" # >> $VAR_LOGFILE
echo "##### CONFIRME AS INFORMAÇÕES ANTES DE COMEÇAR                     " # >> $VAR_LOGFILE
echo "                                                                   " # >> $VAR_LOGFILE
echo "O Nome do seu servidor será: "$VAR_HOSTNAME # >> $VAR_LOGFILE
echo "                                                                   " # >> $VAR_LOGFILE
echo "O Nome do seu usuário será: "$VAR_USERNAME # >> $VAR_LOGFILE
echo "                                                                   " # >> $VAR_LOGFILE
echo "O Nome do seu usuário será: "$VAR_LOGFILE # >> $VAR_LOGFILE
echo "                                                                   " # >> $VAR_LOGFILE
echo "                                                                   " # >> $VAR_LOGFILE
echo "###################################################################" # >> $VAR_LOGFILE
echo "As informações estão corretas:                                     " # >> $VAR_LOGFILE
#
read -r VAR_CONFIRMA # >> $VAR_LOGFILE
#
if [ "$VAR_CONFIRMA" = n ]; then

    ./pre-server.sh

elif [ "$VAR_CONFIRMA" = N ]; then

    ./pre-server.sh

else 

    sleep 1s
    echo0 "3..." # >> $VAR_LOGFILE
    sleep 1s
    echo "2..." # >> $VAR_LOGFILE
    sleep 1s
    echo "1..." # >> $VAR_LOGFILE
    sleep 3s
    echo "##################################################################" # >> $VAR_LOGFILE
    figlet Início
    echo "Iniciando a execução em: $(date +%d-%m-%Y_%H:%M) |"
    echo "##################################################################"

fi


echo "###################################################################"
figlet VIM 
echo "###################################################################"
echo "Deseja instalar o VIM? (SIM = y/s ou NÃO = n/N)"
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
echo "###################################################################"
# figlet "Atualizando..."
# ## 2. Atualização
# sudo apt update
# sudo apt list --upgradable
# sudo apt upgrade -y

## 3. Identificando a máquina na rede
# echo wordpress > /etc/hostname

echo "###################################################################"
## 4. Configura a localização do server
# rm -f /etc/localtime ; ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
# echo America/Sao_Paulo > timezone

echo "by _\|/_MonkeyWise_\|/_"
