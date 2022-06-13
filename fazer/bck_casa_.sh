#!/bin/bash -x

##################################################
# NOME...: Robison Joel
# DATA...: 28/04/2022
# ASSUNTO: Backup do meu PC de casa.
##################################################

de_onde="/home/robisonjoel/*"

pra_onde="/mnt/9C8CD0608CD0368C/bckp/"

sudo rsync -v -r -p --progress $de_onde $pra_onde
