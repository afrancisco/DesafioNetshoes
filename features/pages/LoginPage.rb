require_relative '../pages/PageBase'
class LoginPage < SitePrism::Page

    def initialize
        @email = "sign-up-username"
        @botaoProssegir="Prosseguir"
    end

    def setEmail
        fill_in @email, :with => PageBase.new.get_email()
    end

    def validaProsseguir
        find(:link_or_button, @botaoProssegir)
    end

    def prosseguirClick
        click_on @botaoProssegir ,visible:true
    end

end
  