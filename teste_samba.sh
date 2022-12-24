#!/bin/bash

# echo "Digite o número: "

# read -r VAR_OPT
#

if [ -e /etc/samba/parangamico.conf ]; then

    echo "O Samba já está instalado"

else

    echo "Não tá instalado...Quer instalar?."

fi