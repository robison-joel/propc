# ZIMBRA
## Principais comandos 

Comandos úteis na administração do Zimbra.

---

1. Descobrir qual é a versão e arquitetura do seu Zimbra:

```zmcontrol -v```

2. Comando para Iniciar o server:

```/etc/init.d/zimbra start``` ou ```zmcontrol start```

3. Parar o servidor:

```/etc/init.d/zimbra stop``` ou ```zmcontrol stop```

4. Reiniciar o servidor:

```/etc/init.d/zimbra restart``` ou ```zmcontrol restart```

5. Checar o status do servidor:

```/etc/init.d/zimbra status``` ou ```zmcontrol status```

6. Obter ajuda do comando zmprov:

```zmprov help commands```

7. Obter opções de uso do e a sintaxe de comandos do zmprov: 

```zmprov -h```

8. Trocar o nome da máquina do Zimbra:

```/etc/init.d/zimbra stop ; /opt/zimbra/libexec/zmsetservername -o antigo.dominio.com -n novo.dominio.com```

9. Obter nome da máquina do Zimbra:

```zmhostname```

10. Listar todos os domínios no Zimbra:

```zmprov gad```

11. Criar outro domínio:

```zmprov cd dominio.org.br```

12. Renomear um domínio:

```zmprov -l rd dominio.org.br dominio.net.br```

13. Criar alias para domínio:

```zmprov cad alias_dominio.com.br dominio.com.br```

14. Verificar qual o domínio padrão do Zimbra:

```zmprov gacf zimbraDefaultDomainName```

15. Para remover um domínio ou um alias de domínio:

```zmprov dd alias_dominio.com.br```

16. Criar usuario:

```zmprov ca usuario@dominio.com.br 'senhaaqui'```

17. Alterar a senha de um usuário:

```zmprov sp usuario@dominio.com.br `dominio.usuario` ```

18. Listar todos usuarios:

```zmprov -l gaa```

19. Listar todos os usuários de um domínio:

```zmprov -l gaa dominio.com.br```

20. Listar usuários que são administradores:

```zmprov -l gaaa```

21. Transformar um usuario em administrador:

```zmprov -l gaaa dominio.com.br```

22. Criar um usuario com o atributo de administrador

```zmprov ma usuario@dominio.com.br zimbraIsAdminAccount TRUE```

23. Renomear conta:

```zmprov ca usuario@dominio.com.br 'senhaaqui' zimbraIsAdminAccount TRUE```

24. Renomer conta mudando de domínio:

```zmprov ra usuario@dominio.com.br usuario1@dominio.com.br```

25. Deletar Conta:

```zmpra da usuario@dominio.com.br```

26. Visualizar atributos de uma conta:

```zmprov ga usuario@dominio.com.br```

27. Adicionar alias a uma conta:

```zmprov aaa usuario@dominio.com.br alias_usuario@dominio.com.br```

28. Listar os alias:

```for i in $(zmprov -l gaa); do echo -e "\n$i:"; zmprov ga $i | grep MailAlias; done```

29. Listar os alias de um determinado domínio:

```for i in $(zmprov -l gaa dominio.com); do echo -e "\n$i:"; zmprov ga $i | grep MailAlias; done```

30. Remover alias

```zmprov raa usuario@dominio.com.br alias_usuario@dominio.com.br```

31. Para criar uma lista:

```zmprov cdl lista@dominio.com.br```

32. Visualizar listas de distribuição:

```zmprov gadl```

33. Adicionar membros à lista de distribuição:

```zmprov adlm lista@dominio.com.br usuario@dominio.com.br```

34. Adicionar um usuario a todas as listas de distribuição:

```for listas in $(zmprov gadl); do zmprov adlm $listas usuario@dominio.com.br; done```

35. Ver todas as informações de uma lista:

```zmprov gdlm lista@dominio.com.br```

36. Ver todas as informações de uma lista:
 
```zmprov gdl lista@dominio.com.br```

37. Remover membro de uma lista:

```zmprov rdlm lista@dominio.com.br lista@dominio.com.br```

38. Renomear uma lista de distribuição:

```zmprov rdl lista@dominio.com.br novalista@dominio.com.br```

39. Ocultar uma lista de distribuição da GAL:

```zmprov mdl lista@dominio.com.br  zimbraHideInGal TRUE```

40. Exibir uma lista de distribuição da GAL:

```zmprov mdl lista@dominio.com.br  zimbraHideInGal FALSE```

41. Remover uma lista:

```zmprov ddl lista@dominio.com.br```

42. Listar Classes:

```zmprov gac```

43. Criar uma nova COS:

```zmprov cc nome_da_classe```

44. Ver todos os atributos de uma classe:

```zmprov gc nome_da_classe```

45. Alterar a COS de um usuário:

```zmprov sac usuario@dominio.com.br nova_classe```

46. Para ver quantos usuários de um dominio estão em classes:

```zmprov cta dominio.com.br```

47. Obter o atributo da quota da COS:

```zmprov gc nome_classe zimbraMailQuota```

48. Obter cuota utilizada por cada usuário de um domínio (Formato Conta Quota Quota Utilizada):

```zmprov gqu localhost```

49. Alterar attribute de quota para o valor de 80M, este número deve ser em
bytes

```zmprov mc nome_da_classe zimbraMailQuota 83886080```

50. Checar se a quota foi alterada

```zmprov gc nome_da_classe zimbraMailQuota```

51. Para ver a cuota de cada usuario, vocee pode usar o comando:

```for i in $(zmprov -l gaa); do zmprov ga $i zimbraMailQuota; done```

52. Trocar a senha de administrador:

```zmprov sp admin@dominio.com.br 'senhaaqui'```

53. Logs de entrega de email na caixa (LMTP) Login e Logout Imap/Pop/Mapi, Erros
na aplicação java, operações de indexação, lentidão no banco de dados (slow
queries) e outros

```tail -f /opt/zimbra/log/mailbox.log```

54. Logs de atividade do postfix, status dos serviços, atividades do antivirus e antispam e outros:

```tail -f /opt/zimbra/log/zimbra.log```

55. Logs de autenticação:

```tail -f /opt/zimbra/log/audit.log```

56. Logs do antivirus db:

```tail -f /opt/zimbra/log/clamd.log```

57. Logs de atualizaçao do Antivirus Clamav

```tail -f /opt/zimbra/log/freshclam.log```

58. Logs ao DB do store que estão demorando

```tail -f /opt/zimbra/log/myslow.log```

59. Logs de treinamento do Antispam

```tail -f /opt/zimbra/log/spamtrain.log```

60. Ativar somente o acesso http:

```zmtlsctl http ; zmcontrol restart```

61. Ativar somente o acesso https:

```zmtlsctl https ; zmcontrol restart```

62. Ativa o acesso http e https:

```zmtlsctl mixed ; zmcontrol restart```

FONTE: <https://linuxrede.wordpress.com/2014/02/22/lista-de-comandos-zimbra/https://linuxrede.wordpress.com/2014/02/22/lista-de-comandos-zimbra/>
