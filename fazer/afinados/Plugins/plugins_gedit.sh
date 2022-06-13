#!/bin/bash -v

#  ___     _  ____ ____
# |  _ \   | |/ ___/ ___|
# | |_) |  | | |  _\___ \
# |  _ < |_| | |_| |___) |
# |_| \_\___/ \____|____/
#
# =================================================================================================
# | TITULO..: Script de instalação do Plugin Markdown no gedit
# | DATA....: 11/06/2022 - 21:51 hs
# | AUTOR...: Robison Joel - http://robison-joel.github.io
# ================================================================================================

###### Plugin Markdown gedit

# 1. Instalar as dependencias
sudo apt install python3-markdown pandoc gir1.2-webkit2-4.0 git -y

# 2. Cria o diretorio que vai receber o plugin
sudo mkdir .plugin_gedit

# 3. Entra na pasta
cd .plugin_gedit

# 4. Clona o arquivo do github
sudo git clone https://github.com/maoschanz/gedit-plugin-markdown_preview

# 5. Entra na pasta do plugin
cd gedit-plugin-markdown_preview

# 6. Seta permissoes
sudo chmod +x install.sh

# 7. Executa o script de instalação.
./install.sh

