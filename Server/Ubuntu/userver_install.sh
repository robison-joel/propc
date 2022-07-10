#!/bin/bash -v

#!/bin/bash
#

sudo su

apt update ; apt list --upgradable -a ; apt upgrade -y

# 
### INSTALAR O NET_TOOLS

echo "### Deseja instalar o UTILITÁRIO NET-TOOLS?"

read resp_netools

if [ $resp_netools = "y" ];

then

    apt install net-tools -y

    apt update ; apt list --upgradable -a ; apt upgrade -y

else

    echo "O utilitario net-tools não foi instalado.......prosseguindo!"

fi

# 
### CONFIGURAR REDE

echo "### Deseja configurar a REDE?"

read resp_network

if [ $resp_network = "y" ];

then

    nmtui

else

    echo "Não houve mudança na conexão de rede."

fi

# 
### INSTALAR O BIND9

echo "### Deseja instalar o serviço de DNS?"

read resp_dns

if [ $resp_dns = "y" ];

then

    apt install bind9 bind9utils bind9-doc dnsutils -y

    apt update ; apt list --upgradable -a ; apt upgrade -y

else

    echo "O serviço de DNS não foi instalado.......prosseguindo!"

fi



