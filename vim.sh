#!/bin/bash

sudo apt install figlet -y
# sudo apt install cowsay -y

echo "###################################################################"
figlet  Instalar o VIM? 
echo "###################################################################"
echo "(y/s = SIM ou n/N = NÃO)"
read -r VAR_VIM

if [ $VAR_VIM = y ]; then

    sudo apt install vim -y

elif [ $VAR_VIM = s ]; then

    sudo apt install vim -y

else

    echo "Vocẽ escolheu não instalar o vim...continuando!"

fi