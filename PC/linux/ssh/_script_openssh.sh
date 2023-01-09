#!/bin/bash

##### CRIANDO LOGS #####################################
# Criando a pasta de logs.
if [ -d logs/ ]; then
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### A pasta de logs já existe. #####"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
else
    sudo mkdir logs/
    # Atribuindo permissões á pasta de logs.
    sudo chmod -R 777 logs/
    # Criando o arquivo de logs.
fi

VAR_LOG="logs/log_OPENSSH_$(date +%d-%m-%Y).log"

########################################################
#####
##### INICIO DO SCRIPT #################################
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " > "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | INÍCIO DO SCRIP                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ESPAÇO EM DISCO antes da instalação.              " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
VAR_DF_A=$(df -h /) | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | $VAR_DF_A" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
##### Instalando pacotes necessários.
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalando pacotes necessários.                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalando pacotes necessários...aguarde!         "
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ### Instalando o figlet ##########################" | sudo tee -a "$VAR_LOG"
sudo apt install figlet -y | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"

###################################################################################################

##### INSTALANDO AS OPENSSH
figlet "OPENSSH"  | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                #########" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ######                                      ######" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    DESEJA INSTALAR AS OPENSSH?             ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    1 - INSTALAR                            ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    2 - PULAR a instalação e continuar      ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    3 - SAIR                                ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ######                                      ######" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                #########" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### Digite sua opção! ##########################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
read -r "VAR_OPENSSH"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tu apertastes o numero: $VAR_OPENSSH" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_OPENSSH" = "3" ]; then

    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu não instalar e SAIR!                " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 3...                                              " | sudo tee -a "$VAR_LOG"
    sleep 1s  | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 2..                                               " | sudo tee -a "$VAR_LOG"
    sleep 1s
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 1.                                                " | sudo tee -a "$VAR_LOG"
    sleep 1s
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tchau!                                            " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | By                                                " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                ##################                 " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |              ######################               " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |               _\|/_MonkeyWise_\|/_                " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |              ######################               " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                ##################                 " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    exit

elif [ "$VAR_OPENSSH" = 2 ]; then 
    
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_OPENSSH" = 1 ]; then

#############################################################################################
    
    ##### Instala o OPENSSH
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### Instala o OPENSSH"  | sudo tee -a "$VAR_LOG"
    sudo apt-get install openssh-server -y | sudo tee -a "$VAR_LOG"
    sudo apt-get install openssh-client -y | sudo tee -a "$VAR_LOG"

#############################################################################################

    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"

    ##### Iniciando o serviço ssh
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Iniciando o serviço de SSH" | sudo tee -a "$VAR_LOG"
    /etc/init.d/ssh start | sudo tee -a "$VAR_LOG"

    ##### Verificando o status do serviço ssh
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Verificando o status do serviço de SSH" | sudo tee -a "$VAR_LOG"
    /etc/init.d/ssh status | sudo tee -a "$VAR_LOG"

fi
#####
##### Condicional de instalação ########################
#####

####################################################################################################

echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | FIM DO SCRIP                                      " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ESPAÇO EM DISCO após a instalação!                " | sudo tee -a "$VAR_LOG"
echo "#| Em $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
df -h /
exit