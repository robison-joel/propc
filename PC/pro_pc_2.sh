#!/bin/bash

##### CRIANDO LOGS
# Criando a pasta de logs.
sudo mkdir logs/
# Atribuindo permissões á pasta de logs.
sudo chmod -R 777 logs/
# Criando o arquivo de logs.
VAR_LOG="logs/log_propc_$(date +%d-%m-%Y).log"

##### INICIO DO SCRIPT #################################
echo "                                                  "
echo "##################################################"
echo "                                                  "
echo "INÍCIO DO SCRIP                                   "
echo "                                                  "
echo "DATA E HORA: $(date +%d-%m-%Y_%H:%M)              "
echo "                                                  "
echo "##################################################"
echo "                                                  " > "$VAR_LOG"
echo "##################################################" | sudo tee -a "$VAR_LOG"
echo "                                                  " >> "$VAR_LOG"
echo "INÍCIO DO SCRIP                                   " >> "$VAR_LOG"
echo "                                                  " >> "$VAR_LOG"
echo "DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " >> "$VAR_LOG"
echo "                                                  " >> "$VAR_LOG"
echo "##################################################" >> "$VAR_LOG"
echo "                                                  " >> "$VAR_LOG"
##### Instalando pacotes necessários.
echo "##################################################" >> "$VAR_LOG"
echo "Instalando pacotes necessários.                   " >> "$VAR_LOG"
echo "                                                  "
echo "Instalando pacotes necessários...aguarde!         "
echo "                                                  " >> "$VAR_LOG"
echo "### Instalando o figlet ##########################" >> "$VAR_LOG"
sudo apt install figlet -y >> "$VAR_LOG"
echo "##################################################"  >> "$VAR_LOG"
echo "                                                  " >> "$VAR_LOG"

# INSTALANDO O GRAVADOR DE AUDIO

figlet Gravador de voz
figlet Gravador de voz  >> "$VAR_LOG"
echo "##################################################" >> "$VAR_LOG"
echo "                                                  " >> "$VAR_LOG"
echo "##################################################"
echo "#                                                #"
echo "#   DESEJA INSTALAR O GRAVADOR DE AUDIO?         #"
echo "#                                                #"
echo "#   1 - INSTALAR                                 #"
echo "#                                                #"
echo "#   2 - PULAR a instalação e continuar           #"
echo "#                                                #"
echo "#   3 - SAIR                                     #"
echo "#                                                #"
echo "##################################################"
#
echo "                                                  "
read "VAR_GRAVADOR"
echo "                                                  "
if [ "$VAR_GRAVADOR" = 3 ]; then

    echo "Vocẽ escolheu não instalar o gravador de audio e sair! "
    echo "                                                  "
    echo "3...                                              "
    sleep 1s
    echo "                                                  "
    echo "2..                                               "
    sleep 1s
    echo "                                                  "
    echo "1.                                                "
    sleep 1s
    echo "                                                  "
    echo "Tchau!                                            "
    echo "                                                  "
    echo "By                                                "  
    echo "####################                              "
    echo "_\|/_MonkeyWise_\|/_                              "
    echo "####################                              "
    echo "                                                  "
    exit

elif [ "$VAR_GRAVADOR" = 2 ]; then 
    
    echo "Vocẽ escolheu pular a instalação do gravador de audio!"
    echo "                                                      "
    echo "Continuando..."
    sleep 3s
    
elif [ "$VAR_GRAVADOR" = 1 ]; then

    echo "Instalou!!!"
    # sudo add-apt-repository ppa:audio-recorder/ppa -y
    # sudo apt-get update 
    # sudo apt-get install audio-recorder -y

fi
echo "                                                  "
echo "By                                                "  
echo "####################                              "
echo "_\|/_MonkeyWise_\|/_                              "
echo "####################                              "
echo "                                                  "
