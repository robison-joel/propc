#!/bin/bash
#
#
echo "Escolha a letra: "
# read -r VAR_LETRA
#
sleep 3s
#
if [-e /etc/samba/smb.conf]; then

    echo "########"
    echo "Tem samba"
    echo "########"

elseif
    
    echo "########"
    echo "Nao tem samba, quer instalar?"
    echo "########"

else
	echo "Nada"

fi
