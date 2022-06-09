#!/bin/bash -x

# ================================================================================
# NOME...: Robison Joel
# DATA...: 10/04/2022
# ASSUNTO: Script para instalar as fontes da Microsoft.
# ================================================================================

#
## 1. Adiciona o repositório multiverse

sudo add-apt-repository multiverse

#
## 2. atualiza

sudo apt update 

#
## 3. Instala as fotes

sudo apt install ttf-mscorefonts-installer

#
## 4. atualiza o cache das fontes do sistema

sudo fc-cache -f -v
