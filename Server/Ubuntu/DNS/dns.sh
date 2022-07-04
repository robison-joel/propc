#!/bin/bash 

echo "##### ATENCAO #####"
echo "Este script vai REINICIAR O COMPUTADOR ao terminar!!!"
echo "Deseja mesmo instalar? (s ou n)"
read resp

if [ $resp = "s" ]

then

    sudo apt update ; apt list --upgradable ; sudo apt upgrade -y

    sudo apt install bind9 bind9utils bind9-doc dnsutils -y

else

    exit

fi

#sudo reboot now
