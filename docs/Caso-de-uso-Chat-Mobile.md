
ESPECIFICAÇÃO DE CASO DE USO
Caso de Uso: Comunicação via chat 
Objetivo: Este caso de uso tem como objetivo atender o suporte para o cliente dando ênfase na comunicação com o técnico.
Ator Principal: Cliente.

PRÉ-CONDIÇÕES 
•	Executar o caso de uso: Cadastro. 
•	Executar o caso de uso: Efetuar Login. 
FLUXO PRINCIPAL 
1.	O caso de uso é iniciado quando o ator acessa a opção Chat na interface Inicial da aplicação. 
2.	A aplicação apresenta a interface de conversação onde é possível enviar mensagem de texto.
3.	O cliente aguarda um técnico se conectar ao chat e então redige uma mensagem no campo indicado e seleciona “enviar”.
4.	O Técnico envia resposta e assim vai até a resolução do problema.
5.	Caso cliente queira encerrar até que tudo seja resolvido ou simplesmente encerrar a conversa sem mesmo resolver o problema será para o item 1.1 do fluxo alternativo 
6.	O caso de uso é encerrado.
FLUXO ALTERNATIVO 
1.	 O usuário cancela o procedimento
1.	O proprietário do cartão clica em “Finalizar”.
2.	O sistema retorna para a tela anterior.
3.	O caso de uso é encerrado. 
EXCEÇÕES 
•	A Internet cai durante o procedimento
1.	O sistema informa que foi perdida a conexão com a internet.
2.	A ação é interrompida.
3.	O caso de uso é encerrado.
PÓS-CONDIÇÕES 
•	O Técnico irá responder às dúvidas na janela da conversa.

