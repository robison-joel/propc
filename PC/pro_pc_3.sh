#!/bin/bash

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

VAR_LOG="logs/log_propc_$(date +%d-%m-%Y).log"

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
VAR_DF_A=$(df -h / | grep /) | sudo tee -a "$VAR_LOG"
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

##### INSTALANDO O GRAVADOR DE AUDIO
ravador de voz  | sudo tee -a "$VAR_LOG"
echo "      ######################################      " | sudo tee -a "$VAR_LOG"
echo "   ############################################   " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "#########                                #########" | sudo tee -a "$VAR_LOG"
echo "######                                      ######" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    DESEJA INSTALAR O GRAVADOR DE AUDIO?    ###" | sudo tee -a "$VAR_LOG"
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
read -r "VAR_GRAVADOR"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "Tu apertastes o numero: $VAR_GRAVADOR" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_GRAVADOR" = "3" ]; then

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

elif [ "$VAR_GRAVADOR" = 2 ]; then 
    
    echo "Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_GRAVADOR" = 1 ]; then

    sudo add-apt-repository ppa:audio-recorder/ppa -y
    sudo apt-get update 
    sudo apt-get install audio-recorder -y
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"

fi
#####
##### Condicional de instalação ########################
#####

##### INSTALANDO O ALSAMIXER
figlet Alsamixer  | sudo tee -a "$VAR_LOG"
echo "      ######################################      " | sudo tee -a "$VAR_LOG"
echo "   ############################################   " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "#########                                #########" | sudo tee -a "$VAR_LOG"
echo "######                                      ######" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    DESEJA INSTALAR O ALSAMIXER?            ###" | sudo tee -a "$VAR_LOG"
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
read -r "VAR_ALSAMIXER"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "Tu apertastes o numero: $VAR_ALSAMIXER" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_ALSAMIXER" = "3" ]; then

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

elif [ "$VAR_ALSAMIXER" = 2 ]; then 
    
    echo "Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_ALSAMIXER" = 1 ]; then

    sudo apt-get install alsamixer -y
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"

fi
#####
##### Condicional de instalação ########################
#####

##### INSTALANDO O UNRAR ###############################
figlet UNRAR  | sudo tee -a "$VAR_LOG"
echo "      ######################################      " | sudo tee -a "$VAR_LOG"
echo "   ############################################   " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "#########                                #########" | sudo tee -a "$VAR_LOG"
echo "######                                      ######" | sudo tee -a "$VAR_LOG"
echo "###                                            ###" | sudo tee -a "$VAR_LOG"
echo "###    DESEJA INSTALAR O UNRAR?                ###" | sudo tee -a "$VAR_LOG"
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
read -r "VAR_UNRAR"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "Tu apertastes o numero: $VAR_UNRAR" | sudo tee -a "$VAR_LOG"
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_UNRAR" = "3" ]; then

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

elif [ "$VAR_UNRAR" = 2 ]; then 
    
    echo "Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
    echo "Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_UNRAR" = 1 ]; then

    sudo apt-get install unrar -y | sudo tee -a "$VAR_LOG"
    echo "                                                  " | sudo tee -a "$VAR_LOG"
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
VAR_DFD=$(df -h / | grep /) | sudo tee -a "$VAR_LOG"
echo "$VAR_DFD" | sudo tee -a "$VAR_LOG
echo "                                                  " | sudo tee -a "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
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
