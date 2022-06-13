#Aki pega o que digitar e coloca na variavel user

echo "nome de usuario :"
read user
sudo adduser $user

# Aki ele nao faz nada + do que a saida do comando echo $user ele coloca no arquivo NomeDeUsuario.txt

echo $user >> NomeDeUsuarios.txt

# Se usar apenas '>' em vez de '>>' , sempre que for executado , ele ira apagar o conteudo e escrever o que o usuario digitar , se deixar com '>>' ele sempre vai colocar no final do arquivo

echo "Digite a sua senha, de novo:"
read -ers senha # aki ele nao aparece o que digitou e aguarda um enter
#sudo passwd $user $senha

echo $senha >> SenhaDeUsuarios.txt
