# Permanente Linux

## O QUE? 

Compilação de informações sobre o que eu posso fazer de backup para meu setup. Este script deve ser executado como na PASTA HOME DO USUARIO. 

## 1. Antes de qualquer coisa

Todo o procedimento deve ser xecutado com o usuário root (sudo).

```sudo su```

## 2. BACKUP

### 2.1 Criar a pasta

```mkdir pasta_bckp```

### 2.2 Arquivos para salvar

```cp -rv /home/robisonjoel/.bash_history pasta_bckp/```

```cp -rv /home/robisonjoel/.face.icon pasta_bckp/```

```cp -rv /home/robisonjoel/.bashrc pasta_bckp/```

```cp -rv /home/robisonjoel/.face pasta_bckp/```

```cp -rv /etc/samba/smb.conf pasta_bckp/```

```cp -rv /etc/issue.net pasta_bckp/```

```cp -rv /etc/hostname pasta_bckp/```

```cp -rv /etc/hosts pasta_bckp/```

```cp -rv /etc/motd pasta_bckp/```

### 2.3 Pastas para Backup

```cp -rv /home/robisonjoel/'Área de Trabalho' pasta_bckp/```

```cp -rv /home/robisonjoel/Documentos pasta_bckp/```

```cp -rv /home/robisonjoel/Downloads pasta_bckp/```

```cp -rv /home/robisonjoel/Imagens pasta_bckp/```

```cp -rv /home/robisonjoel/Vídeos pasta_bckp/```

```cp -rv /home/robisonjoel/script pasta_bckp/```

```cp -rv /etc/netplan pasta_bckp/```

## 3. Programas essenciais

```apt install -y gedit```

```apt install -y transmission```

```apt install -y htop```

```apt install -y net-tools```

```apt install -y gnome-disk-utility```

```apt install -y neofetch```

```apt install -y figlet```

```apt install -y firefox```

```apt install -y kolourpaint```

```apt install -y gimp```

```apt install -y flameshot```

```apt install -y okular```

```apt install -y simplescreenrecorder```

```apt install -y vlc```

```apt install -y openssh-server openssh-client```

### 3.1 VSCode

```mkdir .vscode```

```cd .vscode/```

```wget https://az764295.vo.msecnd.net/stable/c3511e6c69bb39013c4a4b7b9566ec1ca73fc4d5/code_1.67.2-1652812855_amd64.deb```

```chmod +x code_1.67.2-1652812855_amd64.deb```

```dpkg -i code_1.67.2-1652812855_amd64.deb```

```apt install -f -y```

```apt update ; apt list --upgradable ; apt upgrade -y```

```cd ..```

## 3.2 Anydesk

## 3.3 Chrome

## 3.4 Samba 
```cd ~```

```mkdir tmp```

```apt update```

```apt install samba samba-common gvfs gvfs-backends gvfs-common gvfs-daemons gvfs-fuse fuse fuse2fs fuse-emulator-common fuse-emulator-gtk fuse-emulator-utils fuseiso fusefat fusesmb fuse-zip -y```

```apt update ; apt list --upgradable ; apt upgrade -y```

```echo "### INSIRA O NOME DO USUARIO SAMBA: "```

```read  usuariosmb```

```smbpasswd -a $usuariosmb```

```cd /etc/samba/```

```cp smb.conf smb.conf.bckp```

```vim smb.conf```

```systemctl restart smbd```
