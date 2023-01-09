# <center>Drivers Nvidia no Ubuntu</center>


DESCRIÇÃO: Instalação dos drivers gráficos da Nvidia no Ubuntu 20.04.
DATA: 02/05/2022
AUTOR: Robison Joel G. Simon
SITE: [robison-joel.github.io](https://robison-joel.github.io).
E-MAIL: rjgsinfo@gmail.com

------------------------------------------------

 
 1. Atualize os programas e o sistema.
 
 `sudo apt update && sudo apt upgrade`

2. Identifique qual é a sua placa vídeo e qual o driver recomendado:

`ubuntu-drivers devices | grep recommended`

3. Instale o driver recomendado:

`sudo apt install nvidia-driver-X`
