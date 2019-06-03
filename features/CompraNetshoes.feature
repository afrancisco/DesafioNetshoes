#language:pt
Funcionalidade: Criar uma lista de desejos 

Contexto:Estar na pagina inicial do site
    Dado que eu estou na pagina inicial da netshoes


# Cenario: Selecionar Categoria 
#     Quando eu Clicar no menu Todas categorias
#     E selecionar uma das categorias disponíveis 
#     Então o sistema direciona para a tela da categoria selecionada

# Cenario: Selecionar item ao carrinho 
#    Dado que estou na tela de lista de categoria
#    E não estiver logado no site
#    Quando eu selecionar um item da lista
#    Então o sistema direciona para a tela de login do site

# Cenário: Criar um Usuário fake 
#  Dado que adicionei um produto a minha lista de desejo sem realizar o login
#  Quando eu informar um email não cadastrado em nova conta
#  E Clicar em prossegir
#  E preencher os campos obrigatórios com dados válidos
#  E clicar em continuar
#  Então o sistema retorna para a pagina da categoria com o item selecionado na lista de desejos
 

Cenário: Criar um Usuário sem preencher os campos obrigatórios 
 Dado que adicionei um produto a minha lista de desejo sem realizar o login
 Quando eu informar um email não cadastrado em nova conta
 E Clicar em prossegir
 E clicar em continuar
 Então marca os campos obrigatórios sem concluir o cadastro
 
 