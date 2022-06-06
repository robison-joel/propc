#                               ____     _  ____ ____
#                              |  _ \   | |/ ___/ ___|
#                              | |_) |  | | |  _\___ \
#                              |  _ < |_| | |_| |___) |
#                              |_| \_\___/ \____|____/
#
# =====================================================================================================
# | TITULO..: INSTALAÇÃO DO WOEUSB NG
# | CONTEUDO: Script da instalação do WoeUSB NG. Programa que cria um pendrive inicializável do Windows no Linux.
# | DATA....: 05/06/2022 - 14:21hs
# | AUTOR...: Robison Joel - http://robison-joel.github.io
# =====================================================================================================
#
# 1. PRÉ-INSTALAÇÃO
#
sudo apt update ; apt list --upgradable -a ; sudo apt full-upgrade -y
#
sudo apt install git p7zip-full python3-pip python3-wxgtk4.0 grub2-common grub-pc-bin -y
#
sudo apt update
#
# 2. INSTALAÇÃO
#
sudo pip3 install WoeUSB-ng -y

