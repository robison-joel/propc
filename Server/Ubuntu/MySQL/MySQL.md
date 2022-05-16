# MySQL

1 - Atualizar

`sudo apt update ; apt list --upgradable ; sudo apt upgrade`

2 - Depois disso, instale o pacote mysql-server

`sudo apt install mysql-server`

3 - Configurando o MySQL

`sudo mysql_secure_installation`

4 - nível de validação de senha.

> Selecione o nível ao digitar 2 (assim o mysql exigirá que sua senha tenha pelo menos **oito caracteres** de tamanho e inclua uma mistura de caracteres em **maiúsculo**, **minúsculo**, **numérico** e **especial**.


5 - Escolha uma senha para o root.

---
Erro encontrado:
> Error: Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)


---
