









Loja API





**REQUISITOS E MODELAGEM DE SOFTWARE
ESPECIFICAÇÃO DE REQUISITOS**


	





Gustavo Batista Lima
Mateus Pereira Dias
Luiz Miguel Cardoso da Silva
Edson Costa Carneiro da Silva

ÚLTIMA ATUALIZAÇÃO: 19/08/2020

	
	
	
	

Loja API -  2020 


- Visão geral e necessidade do sistema.
O nosso sistema e-commerce é responsável por comercializar equipamentos de computadores e computadores personalizados que permitem fácil navegação para o usuário na escolha dos produtos que procura, atendendo na busca pelo produto específico.

- Descrição do público-alvo.
Os usuários de nossa aplicação **_variam entre adolescentes e jovens-adultos de Faixa etária de 16 – 24 anos, mas a tendência é maior em público jovem_** voltado a cultura gamer. 

- Com quem seu sistema irá interagir?
Nosso sistema terá interação com PayPal e Mercado Pago para compras, Google e Facebook para a autenticação e Correios para rastreamento do(s) produto(s).


- Quem são os usuários do sistema?

Administrador – Terá acesso a única página para realização de alterar, remover, adicionar produtos e gerenciar funcionários.

Cliente - Quem irá acessar e realizar as compras.

Funcionário – Atenderá para o suporte ao cliente.



- Requisitos funcionais e não-funcionais

Requisitos funcionais: 
- Cadastro do Cliente.
- Solicitação do Login e Senha do usuário para autenticação.
- Carrinho de compras para exibição dos itens selecionado.
- Cadastrar, alterar, excluir, consultar dados dos produtos do sistema.
- Rastreamento do produto.
- Criptografia de Senha.
- Configuração personalizada do produto.
- O sistema deverá ser capaz de buscar todo o conjunto inicial do banco de dados.
- Envio de E-mails.
- Chat em tempo real para atendimento ao cliente.


Requisitos não-funcionais: 
- Performance: As telas terão um **_tempo de resposta estimado em 10s,_** tanto em consulta em banco de dados quanto em outros dados solicitados pelo usuário.

- Confiabilidade: Fará uma busca para detectar duplicidade nos dados, erros no sistema, não proibirá o usuário de cadastrar uma determinada quantidade de clientes.

- Hardware e Software: Sistema multiplataforma funcionará com Mac, Windows, Linux, IOS e Android. Linguagens e frameworks usados no desenvolvimento do projeto: C# com .Net Core API, TypeScript, HTML5, CSS3(Sass), Angular 9, SQLServer, Figma, Ionic 5 e Azure DevOps.


- Principais casos de uso.
Será usado excepcionalmente para compras online, CRUD produtos, login e cadastro, canal de suporte ao cliente.
****