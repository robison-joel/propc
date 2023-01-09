#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                 #                                    
#   TITULO..: CONEXAO RDESKTOP                                    #                                                                  
#   CONTEUDO: Script Shell que faz a conexão por protocolo RDP.   #
#   DATA....: 05/06/2022 - 14:21hs                                #
#   AUTOR...: Robison Joel - http://robison-joel.github.io        #
#                                                                 #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

############################################
##### IP - $VAR_IP
echo "Qual o IP do computador Windows?"
echo "                                     "
read -r VAR_IP
echo "                                     "

############################################
##### senha - $VAR_USER
echo "Qual o usuário do Windows?"
echo "                                     "
read -r VAR_USER
echo "                                     "

############################################
##### senha - $VAR_SENHA
echo "Qual a senha do Windows?"
echo "                                     "
read -r VAR_SENHA
echo "                                     "

############################################
##### Execução do comando
rdesktop -u "$VAR_USER" -p "$VAR_SENHA" -v -g 1024x768 -T "$VAR_IP" "$VAR_IP" | sudo tee -a /home/robisonjoel/logs/rdp_win7_$(date +%d-%m-%Y).log
