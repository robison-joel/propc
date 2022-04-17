TITULO: CONFIGURACAO DO SSH
DATA: 16/04/2022 - 18:20hs
AUTOR: Robison Joel - rjgsinfo@gmail.com - [robison-joel.github.io](https://robison-joel.github.io).
Descricao: Configuração dos arquivos de Banner para conexao ssh.

=============================================================

<a id="topo"></a>
Menu | tópico
----:|------
1    | [Como?](#como) 
1.1  | [Edite o issute.net](#issue)
1.2  | [Edite o motd](#motd)
2    | [Edite o sshd_conf](#sshconf)
3    | [Reinicie o serviço](#reinicia)
4    | [Fontes](#fontes)

<a id="como"></a>
# 1 Como?
Para customizar o acesso ssh do seu servidor vocẽ deve editar dois arquivos distintos:


<a id="issue"></a>
## 1.1  Edite o arquivo /etc/issue.net

O arquivo `issue.net` contém a mensagem que vai aprecer antes do usuário    

`sudo vim /etc/issue.net`

[volta ao topo](#topo)

<a id="motd"></a>
## 1.2 Edite o arquivo /etc/motd

O arquivo `/etc/motd`, por sua vez, contém a mensagem que será exibida logo após a autenticação.

`sudo vim /etc/motd`


<a id="sshconf"></a>
# 2 - Habilítar os banners
Para habilitar os banners criados nos arquivos acima, vocẽ deve habilitá-los no arquivo `/etc/ssh/sshd_conf`. 

No arquivo , procure por uma linha que diz:

> `#Banner`

descomente e insira o nome do arquivo issue ao lado

> `Banner /etc/issue.net`

[volta ao topo](#topo)

<a id="reinicia"></a>
# 3 - Reinicie o serviços

Reinicie o serviço ssh para que as aterações entrem em vigor.

`sudo service ssh restart`

[volta ao topo](#topo)

<a id="fontes"></a>
# 4 Fontes:
* https://pt.linkedin.com/pulse/mensagem-de-banner-em-servidores-linux-atrav%C3%A9s-do-ssh-marculino
* https://www.guiafoca.org/guiaonline/intermediario/ch27s29.html
* https://ivanix.wordpress.com/2008/12/04/arquivos-de-inicializacao-do-linux/
* https://gnulinuxbr.wordpress.com/2009/07/21/arquivos-etcissue-e-etcmotd/
* http://www.linhadecodigo.com.br/artigo/2974/dicas-avancadas-de-seguranca-para-ssh.aspx#ixzz7QaODMw7p
