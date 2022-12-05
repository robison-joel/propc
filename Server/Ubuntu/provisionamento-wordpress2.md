# Provisionamento Wordpress

~~~
NOME...: Robison Joel
DATA...: 04/12/2022
ASSUNTO: Provisionamento de servidor Ubuntu 20.04 com Wordpress
~~~

## 1. PRÉ-REQUISITOS

* SISTEMA: Ubuntu Server 20.04 64bits.
* REDE...: Conexão com a internet.
* RAM....: 2 GB.
* DISCO..: 20 GB.
* CPU....: 2 Núcleos.

## 2. Atualização

```sudo apt update```

```sudo apt list --upgradable```

```sudo apt upgrade -y```


## 3. Identificando a máquina na rede

```echo wordpress > /etc/hostname```


## 4. Configura a localização do server

```rm -f /etc/localtime ; ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime```

```echo America/Sao_Paulo > timezone```


## 5. Instalando o IPCONFIG

```sudo apt install net-tools -y```

## 6.  Instalar o VIM

```sudo apt install vim -y```

## 7. Setando ip fixo

### 7.1 Cópia de segurança do arquivo .yaml

```sudo cp /etc/netplan/00-installer-config.yaml /etc/netplan/00-installer-config.yaml.bckp```

### 7.2 Edite o arquivo conforme o modelo abaixo

```vim /etc/netplan/00-installer-config.yaml```

~~~yaml
 This is the network config written by 'subiquity'
 network:
  version: 2
  renderer: networkd
  ethernets:
    enp2s0:
      addresses: [192.168.100.200/24]
     dhcp4: false
      dhcp6: false
      gateway4: 192.168.100.1
      nameservers:
        addresses: [192.168.100.1, 8.8.8.8]
~~~
 
### 7.3 Testa as cnfigurações de IP fixo

```netplan try```

### 7.4 Confirma as configurações

```netplan apply```

## 8. Atualização

```sudo apt update```

```sudo apt list --upgradable```

```sudo apt upgrade -y```

## 9. "Instalando o apache2"

```sudo apt install apache2 -y ```

### 9.1 Setando permissões para a pasta do apache

```sudo chown -R rjgs:rjgs /var/www/```

```sudo chmod -R 775 /var/www/```


## 10. Instalar o MySQL Database Server

```sudo apt install mysql-server```

```sudo apt install mysql-server```

### 10.1 Login no MySQL

```mysql -u root```

> Caso haja erro no login acima, pode ser necessário reestartar o mysql-server
>
> Verifique o status do mysql-server
>
> ```systemctl status mysqld```
>
> Os comandos de verificação de status, start e restart.
>
> ```/etc/init.d/mysql status```
>
> ```/etc/init.d/mysql start```
>
> ```/etc/init.d/mysql restart```
>
> ```/etc/init.d/mysql stop```

### 10.2  No terminal do MySQL proceda esses comandos.

```CREATE USER 'phpmyadmin'@'localhost' IDENTIFIED BY '<New-Password-Here>';```

```GRANT ALL PRIVILEGES ON *.* TO 'phpmyadmin'@'localhost' WITH GRANT OPTION;```

```CREATE USER 'rjgs'@'localhost' IDENTIFIED BY 'R0b150#J03l';```

```GRANT ALL PRIVILEGES ON *.* TO 'rjgs'@'localhost' WITH GRANT OPTION;```

### 10.3 Renova os privilégios

```FLUSH PRIVILEGES;```

### 10.4 Para verificar o usuario criado

```SELECT user FROM mysql.user;```

### 10.5 para sair.

```exit```


## 11. Instalar php7.4 e bibliotecas necessárias.

```sudo apt-get install software-properties-common```

```sudo add-apt-repository ppa:ondrej/php```

```sudo apt-get update```

```sudo apt list --upgradable```

```sudo apt-get upgrade```

```sudo apt install php7.4 -y```

```sudo apt install libapache2-mod-php7.4 -y```

```sudo apt install php7.4-curl -y```

```sudo apt install php7.4-intl -y```

```sudo apt install php7.4-zip -y```

```sudo apt install php7.4-soap -y```

```sudo apt install php7.4-xml -y```

```sudo apt install php7.4-gd -y```

```sudo apt install php7.4-mbstring -y```

```sudo apt install php7.4-bcmath -y```

```sudo apt install php7.4-common -y```

```sudo apt install php7.4-xml -y```

```sudo apt install php7.4-mysqli -y```

### 11.1 Habilitando mods do apache2 para trabalhar com o PHP7.4

```a2enmod php7.4```

### 11.2 Reescreve os mods

```a2enmod rewrite```

### 11.3 Restart do apache2

```sudo service apache2 restart```

ou

```systemctl restart apache2```

### 11.4 Altere o usuário que executará o WebSever:

Editando o arquivo ```/etc/apache2/envvars```

```sudo vim /etc/apache2/envvars```

### 11.5 Procure e altere os seguintes parametros

~~~
export APACHE_RUN_USER=www-data
export APACHE_RUN_GROUP=www-data
~~~

altere para

~~~
export APACHE_RUN_USER=rjgs
export APACHE_RUN_GROUP=rjgs
~~~

### 11.6 Salve o arquivo e feche:

```:wq```

### 11.7 Restart do apache2

```sudo service apache2 restart```

ou

```systemctl restart apache2```

### 11.8 Aumentar a memoria utilizada pelo PHP

Editando o arquivo ```/etc/php/7.3/apache2/php.ini```:

```sudo vim /etc/php/7.4/apache2/php.ini```

### 11.9 Altere o parâmetro ```memory_limit``` conforme mostrado abaixo:

```memory_limit = 128M```

altere para:

```memory_limit = 1024M```

### 11.10 Salve o arquivo e feche:

```:wq```

### 11.11 Restart do apache2

```sudo service apache2 restart```

ou

```systemctl restart apache2```

### 11.12 Alterar as configurações do host virtual editando o arquivo:

```sudo vim /etc/apache2/sites-available/000-default.conf```

### 11.13 Insira estas informaçõs dentro do nó ```<Virtualhost *:80>```

~~~
<Virtualhost *:80> 

    <Directory /var/www/html>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride all
        Require all granted
    </Directory>

<Virtualhost>
~~~

### 11.14 Salve o arquivo e feche 

```:wq```

### 11.15 Restart do apache2

```sudo service apache2 restart```

ou

```systemctl restart apache2```

## 16. Atualização

```sudo apt update```

```sudo apt list --upgradable```

```sudo apt upgrade -y```


## 17. Instala o PHPMyAdimin

```sudo apt install phpmyadmin -y```

### 17.1 Durante a instalação será necessário escolher o WebServer. Escolha o Apache2.

~~~
[*] apache2
[ ] lighttpd
~~~

### 17.2 Na pergunta "Configure database for phpmyadmin whith dbconfig-commom?" escolha sim:

```<Yes>```

### 17.3 Crie o link simbólico do phpmyadmin na pasta de host

```ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin```

### 17.4 Para testar, acesse o seguinte endereço no navegador:

```http://localhost/phpmyadmin```


## 18. Instalação do Wordpress

## 18.1 Cria a pasta que receberá as arquivos

```mkdir .wordpress```

## 18.2 Entra na pasta criada

```cd .wordpress```

## 18.3 Efetua o Download do Wordpress

```wget https://wordpress.org/latest.tar.gz```

## 18.4 Descompacta para a pasta wordpress

```tar -xvzf *.tar.gz```

## 18.5 Copia os arquivos do Wordpress

```cp -rv wordpress /var/www/html/```

## 18.6 Ajuste para login no Wordpress

Acessa a pasta do wordpress

```cd /var/www/html/wordpress/```

## 18.7 Efetua cópia de segurança do aqruivo wp-config

```cp -rv wp-config-sample.php wp-config.php```

## 18.8 Edita o arquivo wp-config.php

```vim wp-config-sample.php ```

## 18.9 Ajustes a serem feitos em ```wordpress/wp-config.php```:

~~~
// ** Database settings - You can get this info from your web host ** //

/** The name of the database for WordPress */

define( 'DB_NAME', 'phpmyadmin' );

/** Database username */

define( 'DB_USER', 'phpmyadmin' );

/** Database password */

define( 'DB_PASSWORD', 'R0b150n#J03l' );

/** Database hostname */

define( 'DB_HOST', 'localhost' );
~~~

## FONTES:

<https://magefan.com/blog/install-local-lamp-server-for-ubuntu>

<https://www.siteground.com/kb/fix-error-establishing-database-connection-wordpress/>

<https://www.wpbeginner.com/wp-tutorials/how-to-fix-the-error-establishing-a-database-connection-in-wordpress/>

