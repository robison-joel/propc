#!/bin/bash

# =============================================================================================
# TITULO..: SCRIPT ANYDESK
# CONTEUDO: ShellScript que instala o ANYDESK no computador
# DATA....: 29/12/2022 - 16:15
# AUTOR...: Robison Joel - http://robison-joel.github.io
# =============================================================================================

##### CRIANDO LOGS #####################################
# Criando a pasta de logs.
if [ -d logs/ ]; then
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### A pasta de logs já existe. #####"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
else
    sudo mkdir logs/
    # Atribuindo permissões á pasta de logs.
    sudo chmod -R 777 logs/
    # Criando o arquivo de logs.
fi

VAR_LOG="logs/log_ANYDESK_$(date +%d-%m-%Y).log"

########################################################
#####
##### INICIO DO SCRIPT #################################
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " > "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | INÍCIO DO SCRIP                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ESPAÇO EM DISCO antes da instalação.              " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
VAR_DF_A=$(df -h /) | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | $VAR_DF_A" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
##### Instalando pacotes necessários.
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalando pacotes necessários.                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalando pacotes necessários...aguarde!         "
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ### Instalando o figlet ##########################" | sudo tee -a "$VAR_LOG"
sudo apt install figlet -y | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"

###################################################################################################

clear

##### INSTALANDO O ANYDESK
figlet "ANYDESK"  | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                #########" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ######                                      ######" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    DESEJA INSTALAR AS ANYDESK?             ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    1 - INSTALAR                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    2 - PULAR a instalação e continuar      ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    3 - SAIR                                ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ######                                      ######" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                #########" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### Digite sua opção! ##########################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
read -r "VAR_ANYDESK"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tu apertastes o numero: $VAR_ANYDESK" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_ANYDESK" = "3" ]; then

    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu não instalar e SAIR!                " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 3...                                              " | sudo tee -a "$VAR_LOG"
    sleep 1s  | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 2..                                               " | sudo tee -a "$VAR_LOG"
    sleep 1s
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 1.                                                " | sudo tee -a "$VAR_LOG"
    sleep 1s
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tchau!                                            " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | By                                                " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                ##################                 " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |              ######################               " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |               _\|/_MonkeyWise_\|/_                " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |              ######################               " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                ##################                 " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    exit

elif [ "$VAR_ANYDESK" = 2 ]; then 
    
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_ANYDESK" = 1 ]; then

#############################################################################################
    
    ##### Instala o ANYDESK
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### Instala o ANYDESK"  | sudo tee -a "$VAR_LOG"
    sudo mkdir .anydesk | sudo tee -a "$VAR_LOG"
    cd .anydesk/ | sudo tee -a "$VAR_LOG"
    sudo wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb | sudo tee -a "$VAR_LOG"
    sudo chmod +x anydesk_6.1.1-1_amd64.deb | sudo tee -a "$VAR_LOG"
    sudo dpkg -i anydesk_6.1.1-1_amd64.deb | sudo tee -a "$VAR_LOG"
    sudo apt install -f -y | sudo tee -a "$VAR_LOG"
    sudo apt update ; apt list --upgradable ; sudo apt upgrade -y | sudo tee -a "$VAR_LOG"
    cd .. | sudo tee -a "$VAR_LOG"
       
#############################################################################################

    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"

fi
#####
##### Condicional de instalação ########################
#####

####################################################################################################

echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | FIM DO SCRIP                                      " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ESPAÇO EM DISCO após a instalação!                " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
df -h / | sudo tee -a "$VAR_LOG"
exit