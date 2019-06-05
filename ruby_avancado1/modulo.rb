module Person

    class Juridic
    
        def initialize(nome, cnpj)
            @nome = nome
            @cnpj = cnpj
        end
    
        def add
            puts 'Pessoa jurídica adicionada'
            puts "nome: #{@nome}"
            puts "cnpj: #{@cnpj}"
            puts "-------------------------------"
        end
    end
    
    class Physical
        def initialize(nome, cpf)
            @nome = nome
            @cpf = cpf
        end

        def add
            puts 'Pessoa física adicionada'
            puts "nome: #{@nome}"
            puts "cpf: #{@cpf}"
            puts "-------------------------------"
        end
    end

end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('José Almeida', '425.123.123-123').add