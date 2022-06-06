#!/bin/bash -x

#########################################################################
# NOME...: Robison Joel
# DATA...: 28/04/2022
# ASSUNTO: Backup do meu PC de casa.
#########################################################################

deonde="/home/robisonjoel/*"

praonde="/media/robisonjoel/HD/bckp/"

rsync -v -r -p --delete --progress $deonde $praonde

