require_relative '../pages/PageBase'
class HomePage < SitePrism::Page
    
    def initialize
        @categoriaMenu = "h4.navbar__hamburger--title"
        @categoriaLink="Calças"
        @botaoEntrar="Entrar"
        @itemLista="i.wishlist__heart__logo.ns-icon.ns-icon-wishlist-heart"
        @itemListaSelecionado="ns-icon-wishlist-heart-active"
     
    end

    def acessaCategoria
        self.menuCategoriaClick()
        self.selecionaCategoria()
        self.validaCategoria()
    end 
    
    def adicionarItemCarrinhoSemLogar
        # find(:link_or_button , @botaoEntrar).click
        self.acessaCategoria()
        self.selecionaItemCarrinho()
        
    end

    
    
    def validaEntrar
        find(:link_or_button, @botaoEntrar)
    end

    def validaCategoria
        find('li.item', text: @categoriaLink)
    end
   
    def validaCategoriaLink
        find(:css , @itemListaSelecionado)
    end

    def selecionaItemCarrinho
        first(:css, @itemLista).click
    end

    def selecionaCategoria
        click_link(@categoriaLink) 
    end
    def menuCategoriaClick
        find( :css, @categoriaMenu).click
    end
   
end
  