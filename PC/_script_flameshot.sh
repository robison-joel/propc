#!/bin/bash

# =============================================================================================
# TITULO..: SCRIPT FLAMESHOT
# CONTEUDO: ShellScript que instala o flameshot no ubuntu linux
# DATA....: 30/12/2022 - 00:58hs 
# AUTOR...: Robison Joel - http://robison-joel.github.io
# =============================================================================================

##### CRIANDO LOGS #####################################
# Criando a pasta de logs.
if [ -d logs/ ]; then
    echo "                                                  "
    echo "##### A pasta de logs já existe. #####"
    echo "                                                  "
else
    sudo mkdir logs/
    # Atribuindo permissões á pasta de logs.
    sudo chmod -R 777 logs/
    # Criando o arquivo de logs.
fi

VAR_LOG="logs/log_FLAMESHOT_$(date +%d-%m-%Y).log"

########################################################
#####
##### INICIO DO SCRIPT #################################
echo "                                                  " > "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "INÍCIO DO SCRIP                                   " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "ESPAÇO EM DISCO antes da instalação.              " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
VAR_DF_A=$(df -h /) | sudo tee -a "$VAR_LOG"
echo "$VAR_DF_A" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
##### Instalando pacotes necessários.
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "Instalando pacotes necessários.                   " | sudo tee -a "$VAR_LOG"
echo "                                                  "
echo "Instalando pacotes necessários...aguarde!         "
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "### Instalando o figlet ##########################" | sudo tee -a "$VAR_LOG"
sudo apt install figlet -y | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"

###################################################################################################

clear

##### INSTALANDO O FLAMESHOT
figlet "FLAMESHOT"  | sudo tee -a "$VAR_LOG"
echo "      ######################################      " | sudo tee -a "$VAR_LOG"
echo "   ############################################   " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "#########                                #########" | sudo tee -a "$VAR_LOG"
echo "######                                      ######" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    DESEJA INSTALAR AS FLAMESHOT?           ###" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    1 - INSTALAR                            ###" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    2 - PULAR a instalação e continuar      ###" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    3 - SAIR                                ###" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "######                                      ######" | sudo tee -a "$VAR_LOG"
echo "#########                                #########" | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "   ############################################   " | sudo tee -a "$VAR_LOG"
echo "      ######################################      " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "##### Digite sua opção! ##########################" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
read -r "VAR_FLAMESHOT"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "Tu apertastes o numero: $VAR_FLAMESHOT" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_FLAMESHOT" = "3" ]; then

    echo "Você escolheu não instalar e SAIR!                " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "3...                                              " | sudo tee -a "$VAR_LOG"
    sleep 1s  | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "2..                                               " | sudo tee -a "$VAR_LOG"
    sleep 1s
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "1.                                                " | sudo tee -a "$VAR_LOG"
    sleep 1s
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Tchau!                                            " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "##################################################" | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "By                                                " | sudo tee -a "$VAR_LOG"
    echo "               ##################                 " | sudo tee -a "$VAR_LOG"
    echo "             ######################               " | sudo tee -a "$VAR_LOG"
    echo "              _\|/_MonkeyWise_\|/_                " | sudo tee -a "$VAR_LOG"
    echo "             ######################               " | sudo tee -a "$VAR_LOG"
    echo "               ##################                 " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    exit

elif [ "$VAR_FLAMESHOT" = 2 ]; then 
    
    echo "Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_FLAMESHOT" = 1 ]; then

#############################################################################################
    
    ##### Instala o FLAMESHOT
    echo "##### Instala o FLAMESHOT"  | sudo tee -a "$VAR_LOG"
    sudo apt-get install flameshot -y | sudo tee -a "$VAR_LOG"

#############################################################################################

    echo "##################################################" | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "##################################################" | sudo tee -a "$VAR_LOG"

fi
#####
##### Condicional de instalação ########################
#####

####################################################################################################

echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "FIM DO SCRIP                                      " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "ESPAÇO EM DISCO após a instalação!                " | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
df -h / | sudo tee -a "$VAR_LOG"
exit
