# Siga a documentação da gem cpf_cnpj para criar um programa que recebe
# como entrada um número de cpf e em um método verifique se este número é válido.
# Link da documntação:
# https://github.com/fnando/cpf_cnpj
require "cpf_cnpj"

puts 'informe o número do cpf: '
number = gets.chomp

puts "O CPF é válido ? #{CPF.valid?(number)}" # Check if a CPF is valid
puts "Gera um CPF válido de exemplo: #{CPF.generate}" # Generate a random CPF number
puts "Gera um CPF válido de exemplo e formatado: #{CPF.generate(true)}"  # Generate a formatted number

cpf = CPF.new(number)
puts "Return formatted CPF (xxx.xxx.xxx-xx): #{cpf.formatted}" 
puts "Return stripped CPF (xxxxxxxxxxx): #{cpf.stripped}" 
puts "Check if CPF is valid: #{cpf.valid?}"