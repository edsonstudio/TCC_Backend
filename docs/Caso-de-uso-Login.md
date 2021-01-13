ESPECIFICAÇÃO DE CASO DE USO
Caso de Uso: Efetuar Login 
Objetivo: Este caso de uso especifica a ação de autenticação que um usuário executa no sistema, com objetivo de se conectar na aplicação.
Ator Principal: Cliente.

PRÉ-CONDIÇÕES 
•	Executar o caso de uso: Cadastro. 
FLUXO PRINCIPAL 
1.	O caso de uso é iniciado quando o ator clica no botão “Login” na página principal, ele também tem a opção de login com Facebook ou Google.
2.	Caso o usuário escolha autenticação com Facebook o fluxo segue para o item 1.1 do fluxo alternativo Autenticação com Facebook. Caso positivo para Google segue para o item 2.1 do fluxo alternativo Autenticação com Google do contrário seguirá para o próximo passo.
3.	O ator informa os dados de autenticação.
4.	O sistema valida os dados de autenticação.
**_5.	O sistema registra em histórico (log) a autenticação realizada pelo ator._**
6.	O sistema informa que a autenticação foi realizada com sucesso.
**_7.	O caso de uso encerra._**
FLUXO ALTERNATIVO 

1.	Autenticação com Facebook:
1.	A interface irá abrir uma nova aba na página autenticação do Facebook.
2.	Caso usuário já esteja logado irá fechar a aba voltar e a página do sistema do contrário será necessário efetuar login, após isso também retornará ao sistema.  
3.	O fluxo retorna ao passo 5 do fluxo principal.

2.	Autenticação com Google:
1.	A interface irá abrir uma nova aba na página autenticação do Google.
2.	Caso usuário já esteja logado irá fechar a aba voltar e a página do sistema do contrário será necessário efetuar login, após isso também retornará ao sistema.  
3.	O fluxo retorna ao passo 5 do fluxo principal.
EXCEÇÕES 
1.	Validação de campos 
•	Campo obrigatório em branco. 
•	Campo com informação inválida. 
PÓS-CONDIÇÕES 
•	O ator fica habilitado a realizar ações na área restrita do sistema.

