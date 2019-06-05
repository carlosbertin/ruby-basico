# Siga a documentação da gem cpf_cnpj para criar um programa que recebe
# como entrada um número de cpf e em um método verifique se este número é válido.
# Link da documntação:
# https://github.com/fnando/cpf_cnpj
require "cpf_cnpj"

puts 'informe o número do cpf: '
cpf_number = gets.chomp

# --------------------------------
# Resposta do Leonardo Scorza
# --------------------------------
def check_cpf(cpf_number)
    if CPF.valid?(cpf_number)
        return "O cpf informado é valido"
    else
        return "O cpf informado é invalido"
    end
end

result = check_cpf(cpf_number)
puts result + ' resposta do Leonardo Scorza'
# --------------------------------

puts "O CPF é válido ? #{CPF.valid?(cpf_number)}" # Check if a CPF is valid
puts "Gera um CPF válido de exemplo: #{CPF.generate}" # Generate a random CPF cpf_number
puts "Gera um CPF válido de exemplo e formatado: #{CPF.generate(true)}"  # Generate a formatted cpf_number

cpf = CPF.new(cpf_number)
puts "Return formatted CPF (xxx.xxx.xxx-xx): #{cpf.formatted}" 
puts "Return stripped CPF (xxxxxxxxxxx): #{cpf.stripped}" 
puts "Check if CPF is valid: #{cpf.valid?}"