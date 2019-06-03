require_relative '../pages/PageBase'
class CadastroPage< SitePrism::Page
   
        def initialize
            @nome = "person-name"
            @sobrenome="person-last-name"
            @sexo_feminino="Feminino"
            @sexo_masculino="label-male"
            @diaNascimento="dateofbirth-day"
            @mesNascimento="dateofbirth-month"
            @anoNascimento="dateofbirth-year"
            @cpf="cpf"
            @endereco="address-zipcode"
            @numeroCasa="address-number"
            @telefone= "phones-home"
            @senha= "password"
            @botaoConfirmar= "save-register-natural"
            @campoObrigatorio="error-message"

        end
   
    def cadastraUsuario( bool=false) 
        fill_in @nome, with: PageBase.new.get_random_string(10)
        fill_in @sobrenome, with:PageBase.new.get_random_string(10)
        find('label', text: @sexo_feminino).click
        select '18', from: @diaNascimento
        select 'Mar', from: @mesNascimento
        select '1988', from: @anoNascimento
        fill_in @cpf, with:PageBase.new.generateCPF()
        fill_in @endereco, with:'36083000'
        fill_in @numeroCasa, with: rand(9999)
        fill_in @telefone, with:'31999999999'
        fill_in @senha, with:'321654'
         
    end
    def confirmarClick
        click_on @botaoConfirmar ,visible:true
    end
    def validaObrigatoriedade
        find(:css,@campoObrigatorio)
    end
 end