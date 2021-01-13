ESPECIFICAÇÃO DE CASO DE USO

Caso de uso: Montar setup.
Objetivo: Este caso de uso tem como objetivo a montagem personalizada do setup dos clientes.
Ator principal: Cliente.

PRÉ-CONDIÇÕES
Executar o caso de uso: Cadastro de cliente;
Executar o caso de uso: Login.

FLUXO PRINCIPAL
1.	O caso de uso é iniciado quando o ator acessa a opção Montar Setup. 
2.	A aplicação apresenta a interface para criação personalizada do setup. 
3.	O ator escolhe todos os componentes do setup de acordo com as indicações da interface.
4.	A aplicação apresenta a opção de finalizar compra, caso positivo segue para o caso de uso Pagamento. Caso queira cancelar, segue para o item 1.1 do fluxo alternativo Cancelar ou caso queira apenas ter salvo a configuração escolhida para posteriormente efetuar a compra segue para o item 2.1 do fluxo alternativo Salvar Configuração.

FLUXO ALTERNATIVO
1.	Cancelar
1.1.	O ator seleciona a opção cancelar.
1.2.	A aplicação fecha o formulário.
1.3.	O fluxo é encerrado.

2.	Salvar configuração
2.1.	A interface irá disponibilizar um arquivo .pdf para download que conterá as configurações escolhidas que posteriormente poderão ser carregadas novamente pela interface de montagem.
2.2.	A interface irá questionar se o usuário gostaria de voltar a tela inicial ou montar outra configuração, caso positivo para primeira opção será redirecionado para tela inicial, se positivo para segunda opção o fluxo irá para o passo 1 do fluxo principal.

PÓS – CONDIÇÕES
•	Venda realizada com sucesso;
•	Download de configuração via arquivo .pdf.
