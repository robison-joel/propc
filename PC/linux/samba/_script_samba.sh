#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
#                                                             #
#   TITULO..: SCRIPT SAMBA                                    #
#   CONTEUDO: ShellScript que instala o SAMBA no computador   #
#   DATA....: 02/01/2023 - 10:15                              #
#   AUTOR...: Robison Joel - http://robison-joel.github.io    #
#                                                             #     
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

##### CRIANDO LOGS #####################################
# Criando a pasta de logs.
if [ -d logs/ ]; then
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### A pasta de logs já existe. #####"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
else
    sudo mkdir logs/
    # Atribuindo permissões á pasta de logs.
    sudo chmod -R 777 logs/
    # Criando o arquivo de logs.
fi

VAR_LOG="logs/log_SAMBA_$(date +%d-%m-%Y).log"

########################################################
#####
##### INICIO DO SCRIPT #################################
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " > "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | INÍCIO DO SCRIP                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | DATA E HORA: $(date +%d-%m-%Y_%H:%M)              " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ESPAÇO EM DISCO antes da instalação.              " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
VAR_DF_A=$(df -h /) | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | $VAR_DF_A" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
##### Instalando pacotes necessários.
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalando pacotes necessários.                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalando pacotes necessários...aguarde!         "
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ### Instalando o figlet ##########################" | sudo tee -a "$VAR_LOG"
sudo apt install figlet -y | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"

###################################################################################################



##### Verificação se o samba jã não está instalado.

if [ -e /etc/samba/smb.conf ]; then
    
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | # # # # # # # # # # # # # # # # # # # # # # # # #"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #                                               #"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #    Seu computador já tem o samba instalado    #"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #                                               #"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | # # # # # # # # # # # # # # # # # # # # # # # # #"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"

    exit
    
else    

    clear

    ##### INSTALANDO O SAMBA
    figlet "SAMBA"  | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |  ################################################# " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                  ########" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #######                                      ######" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####                                            ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####    DESEJA INSTALAR AS SAMBA?               ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####                                            ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####    1 - INSTALAR                            ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####                                            ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####    2 - PULAR a instalação e continuar      ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####                                            ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####    3 - SAIR                                ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ####                                            ###" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #######                                      ######" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | #########                                  ########" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |  ################################################# " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |    ############################################   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |       ######################################      " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### Digite sua opção! ##########################" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    read -r "VAR_SAMBA"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tu apertastes o numero: $VAR_SAMBA" | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
    echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
    #####
    ##### Condicional de instalação ########################

    if [ "$VAR_SAMBA" = 1 ]; then

        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu não instalar e SAIR!                " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 3...                                              " | sudo tee -a "$VAR_LOG"
        sleep 1s  | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 2..                                               " | sudo tee -a "$VAR_LOG"
        sleep 1s
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | 1.                                                " | sudo tee -a "$VAR_LOG"
        sleep 1s
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Tchau!                                            " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | By                                                " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                ##################                 " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |              ######################               " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |               _\|/_MonkeyWise_\|/_                " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |              ######################               " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                ##################                 " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        exit

    elif [ "$VAR_SAMBA" = 2 ]; then

        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Você escolheu PULAR a instalação!                 " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Continuando...                                    " | sudo tee -a "$VAR_LOG"
        sleep 2s

    elif [ "$VAR_SAMBA" = 1 ]; then

        ##### Instalação do SAMBA e seus componentes
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##### Instala o VIRTUALBOX"  | sudo tee -a "$VAR_LOG"
        sudo apt install samba samba-common samba-vfs-modules -y  | sudo tee -a "$VAR_LOG"
        sudo apt install gvfs gvfs-common gvfs-fuse gvfs-daemons -y  | sudo tee -a "$VAR_LOG"
        sudo apt install fuse fuse-convmvfs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuse-zip fusefat fuseiso fusesmb -y  | sudo tee -a "$VAR_LOG"

        #############################################################################################

        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Instalou!!!                                       " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   " | sudo tee -a "$VAR_LOG"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | ##################################################" | sudo tee -a "$VAR_LOG"

        ##### Criando usuário do samba
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Insira o seu usuario do SAMBA                     "
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
        read -r "VAR_USERSMB"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
        sudo smbpasswd -a "$VAR_USERSMB"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | Gostaria de editar o arquivo smb.conf?            "
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) | SIM -1 ou NÃO = 2                                 "
        read -r "VAR_SMBCONF"
        echo "# $(date +%d-%m-%y) ás $(date +%H:%M:%S) |                                                   "

        if [ "$VAR_SMBCONF" = 1 ]; then

            # Editando o arquivo 
            sudo vim /etc/samba/smb.conf

        else

            exit

        fi

    fi

fi
