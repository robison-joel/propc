#!/bin/bash

##### CRIANDO LOGS
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

VAR_LOG="logs/log_DISCORD_$(date +%d-%m-%Y).log"

##### INICIO DO SCRIPT #################################
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " > "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | INÍCIO DO SCRIP                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
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

##### INSTALANDO O DISCORD ###############################
figlet DISCORD  | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                #########" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ######                                      ######" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###                                            ###" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ###    DESEJA INSTALAR O DISCORD?                ###" | sudo tee -a "$VAR_LOG"
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
read -r "VAR_DISCORD"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tu apertastes o numero: $VAR_DISCORD" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
#####
##### Condicional de instalação ########################
#####
if [ "$VAR_DISCORD" = "3" ]; then

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

elif [ "$VAR_DISCORD" = 2 ]; then 
    
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Continuando...                                    " | sudo tee -a "$VAR_LOG"
    sleep 2s
    
elif [ "$VAR_DISCORD" = 1 ]; then

    ############################################################################################################################
    
    # Cria a pasta
    sudo mkdir .discord
    # Atribui permissões a ela
    sudo chmod -R 777 .discord/
    # Entra na pasta
    cd .discord/
    # Download do instalador
    wget https://dl.discordapp.net/apps/linux/0.0.22/discord-0.0.22.deb
    # Permissões de execução
    sudo chmod +x discord-0.0.22.deb
    # Instalação
    sudo dpkg -i discord-0.0.22.deb
    sudo apt install -f
    sudo apt update ; apt list --upgradable ; sudo apt upgrade -y
    cd ..

    ############################################################################################################################
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"

fi
#####
##### COndicional de instalação ########################
#####

