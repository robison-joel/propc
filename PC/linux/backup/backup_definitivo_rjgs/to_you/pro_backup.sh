#!/bin/bash -x
#
PASTAVAI=backup_$(date +%d-%m-%y);

PASTA_VAI=/mnt/9C8CD0608CD0368C/backups_rjgs/

sudo mkdir /home/robisonjoel/$PASTAVAI

sudo chmod -R 777 /home/robisonjoel/$PASTAVAI

sudo mkdir /home/robisonjoel/$PASTAVAI/etc

for i in $(cat dahome.txt); do

    sudo cp -Rv $i /home/robisonjoel/$PASTAVAI

done

for i in $(cat lista_vai.txt); do

    sudo cp -Rv $i /home/robisonjoel/$PASTAVAI/etc/

done

cd /home/robisonjoel/

sudo tar -czf $PASTAVAI.tar.tgz $PASTAVAI

sudo cp -rv *.tar.tgz /mnt/9C8CD0608CD0368C/backups_rjgs/

sudo rm -rf /home/robisonjoel/backup* 

nautilus /home/robisonjoel/

## Conteudo do arquivo lista_vai.txt
#
# /etc/hosts 
# /etc/hostname
# /etc/timezone
# /etc/crontab
# /etc/issue.net
# /etc/neofetch
# /etc/netplan
# /etc/samba
# /etc/motd
# /home/trust/.bashrc
# /home/trust/.gedit
# /home/trust/script
# /home/trust/.ssh
# /home/trust/.face
# /home/trust/.face.icon
# /home/trust/'Área de Trabalho'
# /home/trust/Documentos
# /home/trust/Downloads
# /home/trust/Imagens
# /home/trust/Modelos
# /home/trust/tmp
# /home/trust/Vídeos

## Programas a serem instalados
#
# sudo apt install -y gedit 
# sudo apt install -y transmission 
# sudo apt install -y htop 
# sudo apt install -y net-tools 
# sudo apt install -y gnome-disk-utility 
# sudo apt install -y neofetch 
# sudo apt install -y figlet 
# sudo apt install -y firefox 
# sudo apt install -y kolourpaint
# sudo apt install -y flameshot 
# sudo apt install -y okular 
# sudo apt install -y simplescreenrecorder 
# sudo apt install -y vlc 
# sudo apt install -y openssh-server openssh-client 

# VSCode 
# sudo mkdir .vscode 
# sudo chmod 777 .vscode 
# cd .vscode/ 
# sudo wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5
# sudo chmod +x *.deb 
# sudo dpkg -i *.deb 
# sudo apt install -f -y 
# sudo apt update ; sudo apt list --upgradable ; sudo apt upgrade -y 
# cd .. 

# Anydesk 

# Chrome 

# Samba 
# cd ~ 
# sudo mkdir tmp 
# sudo apt update 
# sudo apt install samba samba-common gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y 
# sudo apt update ; apt list --upgradable ; apt upgrade -y 
# echo "### INSIRA O NOME DO USUARIO SAMBA: " 
# read usuariosmb 

# sudo smbpasswd -a $usuariosmb 

# cd /etc/samba/ 
# sudo cp smb.conf smb.conf.bckp 
# sudo vim smb.conf 
# sudo /etc/init.d/smbd restart

# rsync -avhb --delete --backup-dir=/ruta/destino/copia_$(date +%d%m%Y%H%M) /ruta/origen/ /ruta/destino/
