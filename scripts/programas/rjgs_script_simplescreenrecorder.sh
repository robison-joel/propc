#!/bin/sh
#
# AUTOR..: Róbison Joel
# ASSUNTO: Script para instalar o SimplScreenRecorder - Utilizado para gravar o ecrã
# DATA...: 07/04/2018
#
# ADICIONA O REPOSITÓRIO
# Incluir -y ao final
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder -y
#
# ATUALIZA
sudo apt-get update
#
# INSTALA
# Incluir -y ao final
sudo apt-get install simplescreenrecorder -y
#
