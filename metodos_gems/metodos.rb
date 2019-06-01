# Crie um programa que possua um método que resolva a potência dado 
# um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

puts 'informe o número base: '
numero_base = gets.chomp

puts 'informe o expoente: '
expoente = gets.chomp

def calcular_potencializacao(nb, ex)
    nb.to_i ** ex.to_i
end

puts 'O resultado da potencialização é: ' + calcular_potencializacao(numero_base,expoente).to_s