# Permanente Linux

## O QUE? 

Compilação de informações sobre o que eu posso fazer de backup para meu setup. Este script deve ser executado como na PASTA HOME DO USUARIO. 

## 1. BACKUP

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

## 2. Programas essenciais
#
apt install -y gedit

apt install -y transmission

apt install -y htop

apt install -y net-tools

apt install -y gnome-disk-utility

apt install -y neofetch

apt install -y figlet

apt install -y firefox

apt install -y kolourpaint

apt install -y gimp

apt install -y flameshot

apt install -y okular

apt install -y simplescreenrecorder

apt install -y vlc

apt install -y openssh-server openssh-client


## VSCode
#
mkdir .vscode
cd .vscode/
wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/code_1.67.2-1652812855_amd64.deb
chmod +x code_1.67.2-1652812855_amd64.deb
dpkg -i code_1.67.2-1652812855_amd64.deb
apt install -f -y
apt update ; apt list --upgradable ; apt upgrade -y
cd ..

## Anydesk

## Chrome

### Samba 
cd ~
mkdir tmp
apt update
apt install samba samba-common gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y
apt update ; apt list --upgradable ; apt upgrade -y
#
echo "### INSIRA O NOME DO USUARIO SAMBA: "
read  usuariosmb
#
smbpasswd -a $usuariosmb
#
cd /etc/samba/
cp smb.conf smb.conf.bckp
vim smb.conf
#
systemctl restart smbd
