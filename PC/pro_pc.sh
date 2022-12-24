#!/bin/bash

# INSTALANDO O GRAVADOR DE AUDIO

figlet Gravador de voz
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