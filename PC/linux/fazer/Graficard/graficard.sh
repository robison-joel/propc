#!/bin/bash

############################################
##### Instalando o HWINFO
sudo apt install hwinfo -y

############################################
##### Exibe o modelo e marca da placa gráfica
VAR_MARCA=$(hwinfo --gfxcard | grep Model | awk '{print $2}')
VAR_MODELO=$(hwinfo --gfxcard | grep Model | awk '{print $4" "$5" "$6" "$7}')

echo "A Marca da sua Placa de vídeo é:         "
echo 
echo "# # # # # # # # # # # # # # # # # # # # #"
echo "#                                       #"
echo "#    $VAR_MARCA                            #"
echo "#                                       #"
echo "# # # # # # # # # # # # # # # # # # # # #"
echo
echo "O modelo da sua Placa de vídeo é:        " 
echo 
echo "# # # # # # # # # # # # # # # # # # # # #"
echo "#                                       #"
echo "#    $VAR_MODELO              #"
echo "#                                       #"
echo "# # # # # # # # # # # # # # # # # # # # #"

############################################
##### Variável que busca o nome do pacote a ser instalado.
VAR_GRAFICARD=$(ubuntu-drivers devices | grep recommended | awk '{print $3}')

############################################
##### Instala o driver correto.
echo "================================"
echo
echo "sudo apt install $VAR_GRAFICARD -y"
echo
echo "================================"