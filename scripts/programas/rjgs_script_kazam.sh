#!/bin/sh
#
# ========================================================================================
# AUTOR..: Róbison Joel
# ASSUNTO: Script para instalar o Kazan - Utilizado para gravar o Ecrã
# DATA...: 07/04/2018
# CONTATO: rjgsinfo@gmail.com
# =========================================================================================
#
# ADICIONA O REPOSITÓRIO
# Incluir -y ao final
sudo add-apt-repository ppa:kazam-team/unstable-series
#
# ATUALIZA
sudo apt-get update
#
# INSTALA
# Incluir -y ao final
sudo apt-get install kazam python3-cairo python3-xlib
#
