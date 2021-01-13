
ESPECIFICAÇÃO DE CASO DE USO

Caso de Uso: Cadastro de Produto.
Objetivo: Este caso de uso tem como objetivo manter o cadastro de clientes.
Ator Principal: Administrador.

PRÉ-CONDIÇÕES
Executar o caso de uso: Efetuar Login.
O Produto (Modelo) não estar cadastrado no sistema. 

FLUXO PRINCIPAL
1- O caso de uso é iniciado quando o ator acessa a opção Gerenciamento.
2- A aplicação apresenta a interface com todos os produtos com a opção de adicionar um novo Produto.
3- O ator acessa a interface para adicionar um novo produto.
4- O ator informa todos os dados do Produto e seleciona a opção salvar. Se o modelo já estiver cadastrado, o ator será questionado sobre a exibição dos dados deste Produto ou cancelar operação. Caso positivo para primeira opção, **executa o item 1.1 do fluxo alternativo Consultar Produto**. Caso positivo para segunda, executa **o item 3.1 do fluxo alternativo Cancelar**.
5- A aplicação valida às informações inseridas e registra os dados do Produto. O fluxo retorna ao passo 2. Fluxo Principal. 

FLUXO ALTERNATIVO

1- Consultar Produto
  1.1 O ator é redirecionado a listagem de produtos somente com o produto pesquisado.
  1.2 O fluxo é encerrado. 


2- Alterar Produto
 2.1 Realizar o fluxo alternativo 1 Consultar Produto
 2.2 O ator efetua as alterações necessárias no cadastro do produto e seleciona a opção salvar.
 2.3 A aplicação valida às informações inseridas e realiza a alteração nos dados do produto
 2.4 O fluxo retorna ao passo 2. Fluxo Principal. 


3- Cancelar
 3.1 O ator seleciona a opção Cancelar
 3.2 A aplicação fecha o formulário. 
 3.3 O fluxo é encerrado. 


EXCEÇÕES

Validação de campos 
Campo obrigatório em branco. Campo com informação inválida. 
Modelo já existente.
PÓS-CONDIÇÕES
Produto cadastrado com sucesso. 




