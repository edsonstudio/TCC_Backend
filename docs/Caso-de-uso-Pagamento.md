ESPECIFICAÇÃO DE CASO DE USO
Caso de Uso: Efetuar compra. 
Objetivo: Este caso de uso tem como objetivo efetuar a compra de um produto.
Ator Principal: Cliente.

PRÉ-CONDIÇÕES 
•	Executar o caso de uso: Cadastro. 
•	Executar o caso de uso: Efetuar Login. 
•	Conter produtos no carrinho.
FLUXO PRINCIPAL 
1.	O caso de uso é iniciado quando o ator acessa a opção Comprar na interface do carrinho. 
2.	A aplicação apresenta a interface para inserir os dados necessários para finalização da compra. 
3.	O ator informa todos os dados necessários e tem a escolha de fazer pagamento por boleto ou cartão de crédito, caso positivo para boleto, o fluxo segue para o item 1.1 do fluxo alternativo Pagamento com Boleto. Caso positivo para pagamento via cartão de crédito, o fluxo segue para o item 2.1 do fluxo alternativo Pagamento com Cartão de Crédito.
4.	A aplicação apresenta a interface de compra concluída e seu provável período de entrega e opção de voltar para página inicial
FLUXO ALTERNATIVO 
1.	Pagamento com Boleto
1.	A interface irá validar os dados inseridos e avisará sobre o período de aprovação do pagamento.
2.	Caso o cliente resolva cancelar o fluxo segue para o item 3.1 do fluxo alternativo Cancelar, caso contrário segue para o próximo passo
3.	Após confirmação via boleto o sistema disponibilizara um arquivo .pdf para download e o código do boleto caso opte por não baixar o arquivo.
4.	O ator seleciona a opção finalizar e o fluxo retorna ao passo 4 do fluxo principal.

2.	Pagamento com Cartão de Crédito
1.	A interface irá questionar em quantas parcelas será pago o produto e então validar os dados.
2.	Após escolha da quantidade de parcelas e validação o cliente será questionado se deseja finalizar compra.
3.	Caso o cliente resolva cancelar o fluxo segue para o item 3.1 do fluxo alternativo Cancelar, caso contrário segue para o próximo passo.
4.	O pagamento será processado. 
5.	Após processamento finalizado o fluxo retorna ao passo 4 do fluxo principal

3.	Cancelar 
1.	O ator seleciona a opção Cancelar 
2.	A aplicação limpa todos os dados do formulário. 
3.	O fluxo é encerrado e volta a página inicial. 
EXCEÇÕES 
1.	Validação de campos 
•	Campo obrigatório em branco. 
•	Campo com informação inválida. 
2.	CPF inválido 
•	CPF inválido. 
PÓS-CONDIÇÕES 
•	Compra efetivada com sucesso. 

