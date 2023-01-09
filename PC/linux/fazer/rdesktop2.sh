#!/bin/bash

############################################
# rdesktop -u rjgs -p 8246 -N -g 1024x768 -T "Wind7" -v 192.168.100.146

############################################
##### IP - $VAR_IP
#echo "Qual o IP do computador Windows?"
#read -r VAR_IP

############################################
##### senha - $VAR_SENHA
#echo "Qual o usuário do Windows?"
#read -r VAR_USER

############################################
##### resoluçao - $VAR_RES
echo "Escolha a resoluçao do Windows?" 
echo
echo "1 - 800x600"
echo
echo "2 - 1024x768"
echo
echo "3 - 1280x720"
echo

read -r VAR_OPT
echo

if [ $VAR_OPT = " " ]; then

    VAR_RES1="800"
    VAR_RES2="600"
    
elif [ $VAR_OPT = "1" ]; then

    VAR_RES1="800"
    VAR_RES2="600"

elif [ $VAR_OPT = "2" ]; then

    VAR_RES1="1024"
    VAR_RES2="768"
        
elif [ $VAR_OPT = "3" ]; then

    VAR_RES1="1280"
    VAR_RES2="720"

else

    VAR_RES1="800"
    VAR_RES2="600"

fi

VAR_RES=$($VAR_RES1"x"$VAR_RES2)

echo "A resolução é: $VAR_RES"
sleep 10
############################################
##### Execução do comando
#rdesktop -u "$VAR_USER" -p "$VAR_SENHA" -g "$VAR_RES" -T "$VAR_TITULO" 192.168.100.$VAR_IP
