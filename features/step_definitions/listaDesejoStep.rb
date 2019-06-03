require_relative '../pages/LoginPage'
require_relative '../pages/CadastroPage'
require_relative '../pages/HomePage'
cad = CadastroPage.new
home = HomePage.new
login = LoginPage.new
Dado("que eu estou na pagina inicial da netshoes") do
    visit 'https://www.netshoes.com.br/'
  end
  #Todo Passar os seletores para uma classe
  Quando("eu Clicar no menu Todas categorias") do
    home.menuCategoriaClick()
  
  end
  
  Quando("selecionar uma das categorias disponíveis") do
   home.selecionaCategoria()
  end
  
  Então("o sistema direciona para a tela da categoria selecionada") do
    home.validaCategoria()
  
  end
  
  #Todo criar metodo na classe para reutilizar os steps
  Dado("que estou na tela de lista de categoria") do
    home.acessaCategoria()
  
  end
  
  Dado("não estiver logado no site") do
    home.validaEntrar()
  end
  
  Quando("eu selecionar um item da lista") do
   home.selecionaItemCarrinho()
  end
  
  Então("o sistema direciona para a tela de login do site") do
    login.validaProsseguir()
  end
  
  Dado("que adicionei um produto a minha lista de desejo sem realizar o login") do
    home.adicionarItemCarrinhoSemLogar()
  end
  
  Quando("eu informar um email não cadastrado em nova conta") do
   login.setEmail()
  end
  
  Quando("Clicar em prossegir") do
    login.validaProsseguir()
    login.prosseguirClick()
  end
  
  Quando("preencher os campos obrigatórios com dados válidos") do
   cad.cadastraUsuario()
  end
  
  Quando("clicar em continuar") do
    cad.confirmarClick()
  end
  
  Então("o sistema retorna para a pagina da categoria com o item selecionado na lista de desejos") do
    home.validaCategoria()
  end

  Então("marca os campos obrigatórios sem concluir o cadastro") do
   cad.validaObrigatoriedade()
  end