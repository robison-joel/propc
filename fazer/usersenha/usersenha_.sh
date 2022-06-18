#!/bin/bash

# Coleta do nome do usuario e guarda na variavel $user
echo "Nome de usuario :"
read user

sudo adduser $user

# Adiciona o nome do usuario em NomeDeUsuario.txt
echo $user >> NomeDeUsuarios.txt

echo "Digite a sua senha, de novo:"
read -ers senha # aki ele nao aparece o que digitou e aguarda um enter

# Atribui a senha ao usuario
sudo passwd $user $senha

# Manda a senha apra o arquivo SenhaDeUsuarios.txt
echo $senha >> SenhaDeUsuarios.txt
