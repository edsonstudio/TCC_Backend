

ESCOLA SENAI “ARY TORRES”

TRABALHO DE CONCLUSÃO DE CURSO

CURSO TÉCNICO EM DESENVOLVIMENTO DE SISTEMAS

MATEUS PEREIRA

EDSON COSTA

LUIS MIGUEL

GUSTAVO BATISTA

**DRAGON STORE: Ecommerce de produtos eletrônicos**

São Paulo

2020





2

**Sumário**

[**Propósito**](#br3)[** ](#br3)[do**](#br3)[** ](#br3)[documento**](#br3)[**........................................................................................................](#br3)[ ](#br3)[3](#br3)

[**Tema**](#br3)[** ](#br3)[**............................................................................................................................................](#br3)[ ](#br3)[3](#br3)

[**Público-alvo**](#br3)[**...............................................................................................................................](#br3)[ ](#br3)[3](#br3)

[**Escopo**](#br3)[** ](#br3)[do**](#br3)[** ](#br3)[produto**](#br3)[**..................................................................................................................](#br3)[ ](#br3)[3](#br3)

[**Situação**](#br3)[** ](#br3)[atual**](#br3)[**............................................................................................................................](#br3)[ ](#br3)[3](#br3)

[**Situação**](#br4)[** ](#br4)[proposta**](#br4)[**....................................................................................................................](#br4)[ ](#br4)[4](#br4)

[**Principais**](#br4)[** ](#br4)[envolvidos**](#br4)[** ](#br4)[no**](#br4)[** ](#br4)[sistema**](#br4)[** ](#br4)[e**](#br4)[** ](#br4)[suas**](#br4)[** ](#br4)[características**](#br4)[** ](#br4)[**.............................................](#br4)[ ](#br4)[4](#br4)

[**Requisitos**](#br4)[** ](#br4)[funcionais**](#br4)[** ](#br4)[**.............................................................................................................](#br4)[ ](#br4)[4](#br4)

[**Requisitos**](#br5)[** ](#br5)[não-funcionais**](#br5)[**.....................................................................................................](#br5)[ ](#br5)[5](#br5)

[**Requisitos**](#br6)[** ](#br6)[técnicos**](#br6)[**.................................................................................................................](#br6)[ ](#br6)[6](#br6)

[**Modelo**](#br6)[** ](#br6)[Entidade**](#br6)[** ](#br6)[Relacionamento**](#br6)[**.......................................................................................](#br6)[ ](#br6)[6](#br6)

[**Narrativas**](#br7)[** ](#br7)[de**](#br7)[** ](#br7)[caso**](#br7)[** ](#br7)[de**](#br7)[** ](#br7)[uso**](#br7)[** ](#br7)[**.....................................................................................................](#br7)[ ](#br7)[7](#br7)

[**Protótipos**](#br12)[**.................................................................................................................................](#br12)[ ](#br12)[12](#br12)

[**Planos**](#br14)[** ](#br14)[de**](#br14)[** ](#br14)[testes**](#br14)[** ](#br14)[**.....................................................................................................................](#br14)[ ](#br14)[14](#br14)

[**Conclusão**](#br21)[** ](#br21)[**................................................................................................................................](#br21)[ ](#br21)[21](#br21)





3

**Propósito do documento**

Este documento tem o propósito de especificar os requisitos do sistema

assim como as suas funcionalidades, regras e o comportamento esperado da

aplicação.

**Tema**

Aplicação para efetuar a gestão e venda de produtos eletrônicos.

**Público-alvo**

Todos que almejam a montagem de um computador, desde iniciantes que

buscam um setup básico para trabalhos em rotinas administrativas até usuários

que buscam uma configuração específica e mais avançada como

programadores e gamers.

**Escopo do produto**

Este projeto tem como objetivo efetuar o desenvolvimento de uma

aplicação onde seja possível realizar a gestão (cadastro, alteração, listagem e

exclusão conforme controle de permissões) e a venda de produtos eletrônicos,

sejam eles avulsos ou em conjunto que formam uma máquina completa.

Para manter a segurança das informações, deverá ter um controle de

perfil de acesso, onde cada perfil terá uma visão e permissões para acesso a

diferentes funcionalidades.

**Situação atual**

Atualmente, nos produtos similares existentes no mercado não existe uma

preocupação em relação a compatibilidade e ao custo-benefício na montagem

de um computador pessoal, logo, quando leigos precisam de uma máquina para

uma necessidade geral ou específica acabam não tendo esse suporte, sendo

assim compram uma máquina com baixa eficiência devido a compatibilidade

entre suas partes e com preço mais alto, já que quando não há a necessidade

de determinada peça ou quando poderiam sugerir uma mesma peça com melhor

custo assim não o fazem.

Então, com o cenário atual percebemos que além de impactar no bolso

do cliente, o mesmo ainda corre o risco de adquirir um produto sem a devida

qualidade.





4

**Situação proposta**

Com a Dragon Store os clientes tem a segurança de comprar um produto

eficiente e ainda garantem economia, o ecommerce possui um layout pensado

na experiência do usuário e realiza todo o processo previsto: vitrine de produtos,

colocação dos produtos no carrinho, formalização do pedido e pagamento.

**Principais envolvidos no sistema e suas características**

O usuário a ser alcançado é aquele que pretende adquirir uma máquina

para uso específico, seja para rotinas administrativas, design gráfico,

programação, jogos. Auxilia mais o usuário iniciante leigo que não entende sobre

peças e configurações, mas precisa montar uma máquina, para esse perfil a

Dragon Store garante a melhor configuração com a compatibilidade entre peças

e a sugestão de produtos que tenham o melhor custo-benefício, evitando

excessos tanto de equipamento quanto financeiros.

**Requisitos funcionais**

• **[RF001] Manter Produto**

De acordo com as permissões do usuário que estiver acessando a

aplicação, o mesmo poderá cadastrar um novo produto, consultar e alterar as

informações registradas.

• **[RF002] Manter Usuários de Acesso**

De acordo com as permissões do usuário que estiver acessando a

aplicação, o mesmo poderá cadastrar um novo usuário para acessar a aplicação,

consultar e alterar as informações registradas.

• **[RF003] Manter Cliente**

De acordo com as permissões do usuário que estiver acessando a

aplicação, o mesmo poderá cadastrar um novo usuário para acessar a aplicação,

consultar e alterar as informações registradas.

• **[RF004] Manter Categoria**

De acordo com as permissões do usuário que estiver acessando a

aplicação, o mesmo poderá cadastrar uma nova categoria para acessar a

aplicação, consultar e alterar as informações registradas.

• **[RF005] Carrinho de produtos**

Depois que o usuário realiza a autenticação no sistema e seleciona alguns

produtos e suas quantidades, cria-se um carrinho de compras que fica registrado

no banco.





5

• **[RF006] Manter pedidos**

Após a confirmação do carrinho de compras, será processado e registrado

um pedido no banco, para isso o usuário precisa estar previamente cadastrado

e logado no sistema.

• **[RF007] Gerenciar pagamentos**

Depois da formalização do pedido, o usuário informa os dados de

pagamento e após confirmação acontece a autorização e captura.

• **[RF008] Associação de produtos**

Os produtos são associados da seguinte forma: um produto é tido como

pai e outros são tidos como filhos compatíveis ao pai.

• **[RF009] Montagem de uma máquina personalizada**

O sistema da a opção da montagem completa de uma máquina partindo

do zero.

**Requisitos não-funcionais**

• **[RNF001] Senhas**

Todas as senhas de acesso à aplicação deveram ser armazenadas de

forma criptografada.

• **[RNF002] Token de acesso**

Após a autenticação do usuário no sistema, o mesmo devolve um

token de acesso para uso no permissionamento da aplicação no

formato JWT(Json Web Token).

• **[RNF003] Controle de permissionamento**

Através do Identity e das Claims, o sistema entende qual usuário pode

realizar determinada ação.

• **[RNF004] Validações a nível de usuário**

Os formulários da aplicação quando submetidos passam pelo Fluent

Validation que se for o caso retorna uma coleção de erros sobre as

validações dos campos do formulário.

• **[RNF005] Comunicação entre as API’s**

Para uma integração entre as partes do sistema é utilizado um

mecanismo de mensageria em Fila que trabalha com o conceito First-

in First-out, onde a primeira mensagem a chegar é a primeira a sair.

• **[RNF006] Controle de requisições**

O Mediator realiza a função de controle as requisições ao banco de

dados trabalhando em esquema de fila.

• **[RNF007] Resiliência e tratamento de falhas**





6

O Polly é uma biblioteca .NET de resiliência e tratamento de falhas,

caso a aplicação fique indisponível ele tenta fazer um novo envio com

Retry Pattern e a aplicação bloqueia muitas requisições repetidas com

o Circuit Braker que evita ataque DDos.

**Requisitos técnicos**

• Software Gerenciador de Banco de Dados: SQL Server Management

Studio;

• Framework: Microsoft .NET Core 3.1;

• NodeJs com npm;

• Docker Desktop;

• Monitor: 1280 x 960;

• Processador: 64Bits / 1,8GHz;

• Sistema Operacional: Windows 7 ou superior;

• Memória RAM: 8GB;

• Hard Disk: 500GB;

• Placa de vídeo: 720p (1280x720);

• Navegador: Google Chrome, Mozilla, IE...;

• IDE: Visual Studio 2017 ou superior.

**Modelo Entidade Relacionamento**





7

**Narrativas de caso de uso**

**Caso de uso: Cadastro de cliente.**

Objetivo: Este caso de uso tem como objetivo o cadastramento de clientes em

nossa base de dados.

Ator principal: Cliente.

PRÉ-CONDIÇÕES

Acessar o nosso endereço na web

Clicar no botão cadastre-se, caso ainda não possua o cadastro

FLUXO PRINCIPAL

\1. O caso de uso é iniciado quando o ator acessa a opção cadastre-se.

\2. A aplicação apresenta a interface para criação do cadastro de usuário.

\3. O ator preenche todos os campos obrigatórios do formulário de cadastro

e escolhe a opção salvar.

\4. A aplicação apresenta a mensagem de sucesso, caso nenhum erro

ocorra.

\5. O fluxo retorna termina com o redirecionamento para tela de login.

FLUXO ALTERNATIVO

\1. Cancelar

\2. O ator seleciona a opção cancelar.

\3. A aplicação fecha o formulário.

\4. O fluxo é encerrado.





8

EXCEÇÕES

Validação em todos os campos obrigatórios.

Validação de CPF.

Validação de endereço.

Validação de e-mail.

Validação de telefone.

PÓS – CONDIÇÕES

• Cadastro realizado com sucesso;

• Usuário não cadastrado por conta das validações do sistema.

**Caso de Uso: Cadastro de Produto.**

Objetivo: Este caso de uso tem como objetivo manter o cadastro de clientes.

Ator Principal: Administrador.

PRÉ-CONDIÇÕES

Executar o caso de uso: Efetuar Login.

O Produto (Modelo) não estar cadastrado no sistema.

FLUXO PRINCIPAL

1- O caso de uso é iniciado quando o ator acessa a opção Gerenciamento.

2- A aplicação apresenta a interface com todos os produtos com a opção de

adicionar um novo Produto.

3- O ator acessa a interface para adicionar um novo produto.

4- O ator informa todos os dados do Produto e seleciona a opção salvar. Se o

modelo já estiver cadastrado, o ator será questionado sobre a exibição dos

dados deste Produto ou cancelar operação. Caso positivo para primeira

opção, **executa o item 1.1 do fluxo alternativo Consultar Produto**. Caso

positivo para segunda, executa **o item 3.1 do fluxo alternativo Cancelar**.

5- A aplicação valida às informações inseridas e registra os dados do Produto.

O fluxo retorna ao passo 2. Fluxo Principal.

FLUXO ALTERNATIVO

1- Consultar Produto

1.1 O ator é redirecionado a listagem de produtos somente com o produto

pesquisado.

1.2 O fluxo é encerrado.

2- Alterar Produto

2.1 Realizar o fluxo alternativo 1 Consultar Produto

2.2 O ator efetua as alterações necessárias no cadastro do produto e seleciona

a opção salvar.

2.3 A aplicação valida às informações inseridas e realiza a alteração nos dados

do produto

2.4 O fluxo retorna ao passo 2. Fluxo Principal.

3- Cancelar

3.1 O ator seleciona a opção Cancelar





9

3.2 A aplicação fecha o formulário.

3.3 O fluxo é encerrado.

EXCEÇÕES

Validação de campos

Campo obrigatório em branco. Campo com informação inválida.

Modelo já existente.

PÓS-CONDIÇÕES

Produto cadastrado com sucesso.

**Caso de Uso: Efetuar compra.**

Objetivo: Este caso de uso tem como objetivo efetuar a compra de um produto.

Ator Principal: Cliente.

PRÉ-CONDIÇÕES

• Executar o caso de uso: Cadastro.

• Executar o caso de uso: Efetuar Login.

• Conter produtos no carrinho.

FLUXO PRINCIPAL

\1. O caso de uso é iniciado quando o ator acessa a opção Comprar na

interface do carrinho.

\2. A aplicação apresenta a interface para inserir os dados necessários para

finalização da compra.

\3. O ator informa todos os dados necessários e tem a opção de fazer

pagamento por cartão de crédito. Caso opte por esse pagamento o fluxo

segue para o item 1.1 do fluxo alternativo Pagamento com Cartão de

Crédito.

\4. A aplicação apresenta a interface de compra concluída e seu período de

entrega e opção de voltar para página inicial

FLUXO ALTERNATIVO

\1. Pagamento com cartão de crédito

\1. A interface irá validar os dados.

\2. Após isso o cliente será questionado se deseja finalizar compra.

\3. Caso o cliente resolva cancelar o fluxo segue para o item 2.1 do fluxo

alternativo Cancelar, caso contrário segue para o próximo passo.

\4. O pagamento será processado.





10

\5. Após processamento finalizado o fluxo retorna ao passo 4 do fluxo

principal

\2. Cancelar

\1. O ator seleciona a opção Cancelar

\2. A aplicação limpa todos os dados do formulário.

\3. O fluxo é encerrado e volta a página inicial.

EXCEÇÕES

Validação de campos

• Campo obrigatório em branco.

• Campo com informação inválida.

CPF inválido

• CPF inválido.

PÓS-CONDIÇÕES

• Compra efetivada com sucesso.

**Caso de Uso: Efetuar Login**

Objetivo: Este caso de uso especifica a ação de autenticação que um usuário

executa no sistema, com objetivo de se conectar na aplicação.

Ator Principal: Cliente.

PRÉ-CONDIÇÕES

• Executar o caso de uso: Cadastro.

FLUXO PRINCIPAL

\1. O caso de uso é iniciado quando o ator clica no botão “Login” na página

principal.

\2. O ator informa os dados de autenticação e clica em entrar.

\3. O sistema valida os dados de autenticação.

\4. O sistema informa que a autenticação foi realizada com sucesso.

\5. O fluxo se encerra.

EXCEÇÕES

Validação de campos

• Campo obrigatório em branco.

• Campo com informação inválida.





11

PÓS-CONDIÇÕES

• O ator fica habilitado a realizar ações na área permitida conforme nível

de usuário do sistema.

**Caso de uso: Montar setup.**

Objetivo: Este caso de uso tem como objetivo a montagem personalizada do

setup dos clientes.

Ator principal: Cliente.

PRÉ-CONDIÇÕES

Executar o caso de uso: Cadastro de cliente;

Executar o caso de uso: Login.

FLUXO PRINCIPAL

\1. O caso de uso é iniciado quando o ator acessa a opção Montar Setup.

\2. A aplicação apresenta a interface para criação personalizada do setup.

\3. O ator escolhe todos os componentes do setup de acordo com as

indicações da interface.

\4. A aplicação apresenta a opção de finalizar compra, caso positivo segue

para o caso de uso Pagamento. Caso queira cancelar, segue para o

item 1.1 do fluxo alternativo Cancelar.

FLUXO ALTERNATIVO

\1. Cancelar

1.1. O ator seleciona a opção cancelar.

1.2. A aplicação fecha o formulário.

1.3. O fluxo é encerrado.

PÓS – CONDIÇÕES

• Venda realizada com sucesso;





12

**Protótipos**

• Tela inicial

• Montagem do setup





13

• Gerenciamento do estoque

• Catálogo de produtos





14

• Gerenciamento de compatibilidade entre peças

**Planos de testes**

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de gerenciar todo o estoque de produtos

conforme permissionamento, estão inclusos os itens: Adicionar, atualizar, listar e excluir.

**Requisito relacionado: RF001**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“adicionar”

Exibe a

mensagem:

“Produto

cadastrado

com

Adicionar um

produto com

sucesso

\- Preencher

os campos

do formulário

1

Adicionar

**OK**

sucesso”.

\- Selecione a

opção salvar





15

\- Selecione a

opção

“adicionar”

\- Preencha

somente

alguns

campos, não

todos

A aplicação

alerta qual

campo está

em branco e

precisa ser

preenchido

Validação de

campos

2

Adicionar

**OK**

\- Selecione a

opção

“salvar”

A aplicação

exibe uma

lista vertical

dos produtos

e alguns dos

seus detalhes

\- Selecione a

opção

“produtos”

Listagem dos

produtos

3

Consultar

**OK**

\- Selecione a

opção

“editar”

\- Preencha

somente os

campos

necessário

para

É exibida a

mensagem:

“Produto

atualizado

com sucesso”

Atualizar um

produto com

sucesso

4

Atualizar

**OK**

alteração

\- Selecione a

opção

“salvar”

\- Selecione a

opção

É exibida a

mensagem:

“produto

excluído com

sucesso”

“excluir”

Excluir um

produto com

sucesso

5

Excluir

**OK**

\- Selecione a

opção “ok”

na tela de

confirmação





16

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de gerenciar os usuários da aplicação, bem

como a realização de cadastro e login no sistema.

**Requisito relacionado: RF002**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“cadastre-se”

Exibe a

mensagem:

“Usuário

cadastrado

com

Adicionar um

usuário com

sucesso

\- Preencher

os campos

do formulário

1

Adicionar

**OK**

sucesso”.

\- Selecione a

opção salvar

\- Selecionar

a opção

“cadastre-se”

O sistema

alerta que

falta um ou

mais campos

a serem

\- Deixar

algum

campo

obrigatório

em branco

Validação de

campos em

branco

2

Adicionar

**OK**

preenchidos

\- Selecione a

opção salvar

\- Selecionar

a opção

“cadastre-se”

\- Preencher

o campo

senha com

uma senha

fraca, sem

os

O sistema

alerta sobre a

força da

senha

escolhida.

Validação de

força da

3

Adicionar

**OK**

senha

caracteres

necessários

\- Selecione a

opção salvar





17

\- Selecionar

a opção

“cadastre-se”

\- Preencher

o campo

email sem

“@” ou com

caracteres

insuficientes

O sistema

aponta

correção no

endereço de

email

Validação de

email

4

Adicionar

**OK**

\- Selecione a

opção salvar

\- Selecionar

a opção

“Login”

Exibe a

mensagem:

“Usuário

Login

realizado

\- Preencher

os campos

5

Logar

**OK**

com sucesso do formulário

logado com

sucesso”.

\- Selecione a

opção

“Login”

\- Selecionar

a opção

“Login”

Exibe a

\- Preencher

os campos

do formulário

Validação de Validação de

usuario login

mensagem:

“Usuário não

cadastrado”.

6

**OK**

\- Selecione a

opção

“Login”





18

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de gerenciar as categorias dos produtos da

aplicação.

**Requisito relacionado: RF004**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“Adicionar”

Exibe a

mensagem:

“Categoria

cadastrada

com

Adicionar

uma

categoria

com sucesso

\- Preencher

o campo do

nome da

1

Adicionar

**OK**

categoria

sucesso”.

\- Selecione a

opção salvar

O sistema

exibe uma

lista vertical

com todas as

categorias

Listar as

categorias

cadastradas

\- Selecionar

a opção

“Categorias”

2

Listar

**OK**

cadastradas

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de gerenciar os produtos que o usuário coloca no

carrinho de compras.

**Requisito relacionado: RF005**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“comprar”

Os produtos

são

Adicionar

produtos ao

carrinho

1

2

Adicionar

nos produtos

específicos

adicionados

ao carrinho

com sucesso

**OK**

\- Selecionar

a opção

“remover”

nos produtos removidos do

específicos

Os produtos

são

Remover

produtos ao

carrinho

Remover

**OK**

carrinho com

sucesso





19

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de formalizar o pedido após a confirmação do

carrinho de compras.

**Requisito relacionado: RF006**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“confirmar”

na tela do

carrinho

O pedido é

criado com

sucesso

Adicionar

pedido

1

Adicionar

**OK**

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de formalizar o pagamento, bem como sua

transação de autorização e sua transação de captura.

**Requisito relacionado: RF007**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“confirmar”

na tela de

confirmação

do pedido e

informando

os dados do

cartão de

O pedido é

pago com

sucesso

Adicionar

pagamento

1

Adicionar

**OK**

crédito





20

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de associar os produtos de forma que o usuário

tenha ciência da compatibilidade entre as peças.

**Requisito relacionado: RF008**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

a opção

“associar” e

escolher o

produto pai e

o produto

filho

Os produtos

são

associados

com sucesso

Adicionar

associação

com sucesso

1

Adicionar

**OK**

\- Selecionar

a opção

“remover

Os produtos

são

desassociado

s com

associação”

e escolher o

produto pai e

o produto

filho

Remover

associação

com sucesso

2

Remover

**OK**

sucesso

**Caso de teste**

**Objetivo:** Este caso de testes tem o objetivo de montar uma máquina personalizada conforme

o desejo do usuário.

**Requisito relacionado: RF009**

**Item**

**Cenário**

**Roteiro**

**Resultado**

**esperado**

**Resultado**

\- Selecionar

todas as

peças

obrigatórias

Os produtos

são

adicionados

com sucesso

Adicionar

Peças com

sucesso

1

2

Adicionar

**OK**

O sistema

aponta a falta

de um item

obrigatório e

não

\- Não

selecionar

algum item

obrigatório

Validação de

itens

obrigatórios

Adicionar

**OK**

prossegue

com o

processo





21

**Conclusão**

Neste trabalho abordamos o assunto “Sistema ecommerce de produtos

eletrônicos” que oferece todo o processo de compra de um ou mais produtos,

além da possibilidade de montagem de uma máquina completa totalmente do

zero com a vantagem de entregar um produto com maior eficiência e melhor

custo-benefício possível, em vista do mecanismo de compatibilidade entre peças

que ajuda tanto usuários profissionais e experientes, quanto leigos e iniciantes,

garantindo uma aquisição otimizada e barata.

Concluímos que a Dragon Store tem todas as condições necessárias para

criar um impacto de mercado, pois nossa solução beneficia o cliente gerando

valor para sua aquisição e é uma inovação visto que outros produtos não

possuem tais características.

Cumprimos vários dos objetivos propostos no início do projeto e ainda

conseguimos focar mais na segurança das informações transitadas no sistema,

minimizando a chance e eliminando brechas possíveis para ataques.

A funcionalidade principal do sistema foi executada com sucesso que foi

a possibilidade de associar diferentes peças, gerando assim um catálogo de

compatibilidade para montagem das máquinas.

