#######################################################################################
# NOME...: Robison Joel.
# QUANDO.: 18/02/2022.
# ASSUNTO: Instalação e configuração do VSFTPD (Very Secure FTP Daemon) no Ubuntu Server 20.04.
#######################################################################################
#
### EXECUTAR TUDO COMO ROOT 
# 
### OPERAÇÃO DO DAEMON
#
## systemctl status vsftpd - Verifica o status do serviço.
## systemctl start vsftpd - Inicia o serviço.
## systemctl restart vsftpd - Reinicia o serviço.
## systemctl stop vsftpd - Para o serviço.
## systemctl enable vsftpd 
#
### PRÉ INSTALAÇÃO
#
# Para a instalação do VSFTPD nessecitamos instalar o utilitário net-tools.
apt install net-tools -y
#
## Verificar a disponibilidade da porta 21 (ou da porta que o cliente preferir utilizar na conexão FTP).
netstat -pln | grep 21
#
## Caso precise liberar as portas no firewall
ufw allow 20/tcp
ufw allow 21/tcp
#
## Preparar para instalar.
apt-get update
#
### INSTALAÇÃO
#
## Instale com o comando
apt-get install vsftpd -y
#
## Inicia o serviço
systemctl start vsftpd
#
## Habilita a inicializar com o sistema
systemctl enable vsftpd
#
### CONFIGURAÇÃO
#
## O arquivo de configuração vsftpd.conf deve estar em /etc (/etc/vsftpd.conf). Realize um backup do arquivo de configuração.
cp /etc/vsftpd.conf /etc/vsftpd.conf.bckp
#
## Abrir o arquivo para a configuração e inclua (se já não houver) os parâmetros:
# userlist_enable=YES
# userlist_deny=NO
vim /etc/vsftpd.conf
#
## Caso não exista, crie o arquivo /etc/vsftpd.userlist. Ele abrigará os usuários que tem acesso permitido ao ftp (somente eles).
vim /etc/vsftpd.userlist
#
## liste os usuários no arquivo - em formato de lista (somente o usuário sem nenhum outro parâmetro)
# Exemplo:
#usuario1
#usuario2
#usuario3...

### FONTES
#
## https://sempreupdate.com.br/como-instalar-um-servidor-ftp-ubuntu/
## https://www.youtube.com/watch?v=1WVBC0KBOeE


