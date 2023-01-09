#!/bin/bash -x

### Coleta do nome da pasta
#
echo "Digite o nome da pasta que vai receber o backup: "
read dir_bckp

## Cria a pasta
#
mkdir $dir_bckp

## Arquivos para salvar
#
cp -rv /home/robisonjoel/.bash_history $dir_bckp/
cp -rv /home/robisonjoel/.face.icon $dir_bckp/
cp -rv /home/robisonjoel/.bashrc $dir_bckp/
cp -rv /home/robisonjoel/.face $dir_bckp/
cp -rv /etc/samba/smb.conf $dir_bckp/
cp -rv /etc/issue.net $dir_bckp/
cp -rv /etc/hostname $dir_bckp/
cp -rv /etc/hosts $dir_bckp/
cp -rv /etc/motd $dir_bckp/

### 1.2 Pastas para Backup
#
cp -rv /home/robisonjoel/'Área de Trabalho' $dir_bckp/
cp -rv /home/robisonjoel/Documentos $dir_bckp/
cp -rv /home/robisonjoel/Downloads $dir_bckp/
cp -rv /home/robisonjoel/Imagens $dir_bckp/
cp -rv /home/robisonjoel/Vídeos $dir_bckp/
cp -rv /home/robisonjoel/script $dir_bckp/
cp -rv /etc/netplan $dir_bckp/
