#!/bin/bash
#
### INSTALAR O BIND9
#
echo "##### AVISO: ESTE SCRIPT IRÁ REINICIAR O COMPUTADOR #####"
echo "Tem certeza que quer instalar?"
read resposta

if [ $resposta = "y" ];

then

    #
    apt install -y bind9 bind9utils bind9-doc dnsutils -y

    ### Atualizar
    #
    sudo apt update

    ### PASTA DE CONFIGURAÇÃO DO BIND9
    #
    # cd /etc/bind

    sudo reboot

else

    echo "Sair sem instalar!"

fi
