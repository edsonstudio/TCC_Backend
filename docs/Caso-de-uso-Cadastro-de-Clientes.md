ESPECIFICAÇÃO DE CASO DE USO

Caso de uso: Cadastro de cliente.
Objetivo: Este caso de uso tem como objetivo o cadastramento de clientes em nossa base de dados.
Ator principal: Cliente.

PRÉ-CONDIÇÕES
Acessar o nosso endereço na web
Clicar no botão cadastre-se, caso ainda não possua o cadastro

FLUXO PRINCIPAL
1.	O caso de uso é iniciado quando o ator acessa a opção Cadastre-se. 
2.	A aplicação apresenta a interface para criação do cadastro de usuário. 
3.	O ator preenche todos os campos obrigatórios do formulário de cadastro e escolhe a opção salvar.
4.	A aplicação apresenta a mensagem de sucesso, caso nenhum erro ocorra.
5.	O fluxo retorna termina com o redirecionamento para tela de login.

FLUXO ALTERNATIVO
1.	Cancelar
1.	O ator seleciona a opção cancelar.
2.	A aplicação fecha o formulário.
3.	O fluxo é encerrado.

EXCEÇÕES
Validação em todos os campos obrigatórios.
Validação de CPF.
Validação de endereço.
Validação de email.
Validação de telefone.
 
PÓS – CONDIÇÕES
•	Cadastro realizado com sucesso;
•	Usuário não cadastrado por conta das validações do sistema.
