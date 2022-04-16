# MANUAL DO SSH

## 1. O que é?
Acrônimo de *Secure Socket Shell* É um protocolo de rede que permite acesso a um determinado sistema (Server ou PC), via shell.

## 2. Qual?

O mais difundido e utilizado, no mundo linux, é o [OpenSSH](https://www.openssh.com/). E é sobre ele que vamos direcionar esse howto.

![Logo do OpenSSH](https://www.openssh.com/images/openssh.gif)

## 3. Instalação 

**Antes de instalar, pense nisso:**

>Qual a minha finalidade para o uso do ssh? 
O SSH permite conexões ssh entre um "client" e um "server". Se você queira **acessar o seu computador á partir de outro**, deve instalar ambos os pacotes. Caso queira **apenas acessar outro computador**, por motivos de segurança o mais recomendado é instalar somente o pacote "client".

### 3.1 Terminal

Abra uma sessão no terminal e digite:

`sudo apt-get install openssh-client openssh-server`

Aperte ENTER e insira a sua senha de sudo. Espere a instalação acabar.

### 3.2. Pós-intalação

Para se certificar que foi instalado e que está rodando corretamente no seu sistema, use um esses dois comandos:

Para verificar o status do serviço SSH:
`service ssh status`  ou `service ssh status | grep Active` 

Para iniciar o o servico SSH:
`service ssh start`

Para reiniciar o o servico SSH:
`service ssh restart`

Para parar o o servico SSH:
`service ssh stop`

## 4. Instruções para conexão

### 4.1 Sintaxe:

Basicamente, a conexão ssh é feita, por escrito no shell, respeitando essa sintaxe:

`ssh user@servidor`

Onde:
* user = usuário real e habilitado á fazer login no sistema que está sendo acessado.
* servidor = IP ou dominio do computador que será acessado.

Após o request lhe será solicitado inserir a senha do usuário e...BINGO!

