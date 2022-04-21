TITULO      | Arquivo Bashrc.
-----------:| ----------------------------
Descrição:  | Configuração do arquivo bashrc, responsável por criar e armazanar alias para o terminal linux.
DATA:       | 20/04/2022
AUTOR:      | Robison Joel G. Simon
Home page:  | [robison-joel.github.io](https://robison-joel.github.io).
E-mail:     | rjgsinfo@gmail.com 


=============================================================

> Aviso:
> Para cumprir este tutorial na integralidade recomenda-se ter instalado o [vim](../vim/vim.md) ou outro editor de texto que possa ser executado em modo superusuário (sudo).

<a id="topo"></a>
Menu | tópico
----:|------
1    | [O que?](#oque) 
1.1  | [Edite o issute.net](#issue)
1.2  | [Edite o motd](#motd)
2    | [Edite o sshd_conf](#sshconf)
3    | [Load](#reinicia)
4    | [Fontes](#fontes)

<a id="oque"></a>

# 1 O que é?
É o arquivo responsável pela configuração do bash. Nele, duas funções interessantes podem ser configuradas. A primeira delas é declaração de ALIAS definitivos (que perduram, mesmo após o fim da sessão do terminal), a outra é a entradas de scripts, programas ou comandos a serem executados na INICIALIZAÇÃO do terminal.

# 2 Onde?

O arquivo `.bashrc` é um arquivo oculto (pois seu nome inicia com um ponto "."), nativo do sistema linux, presente na pasta home de cada usuário criado em determinado sistema. Ele está localizado em:

`/home/usuario/.bashrc`

<a id="oque"></a>