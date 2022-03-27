#!/bin/bash
#########################################################################
# NOME...: Robison Joel
# DATA...: 01/03/2022
# ASSUNTO: Script para inserir usuarios no Samba Share.
#########################################################################
#
echo "### INSIRA O NOME DO USUARIO SAMBA: "
read  usuariosmb
#
sudo smbpasswd -a $usuariosmb
#
