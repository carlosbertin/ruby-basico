# Crie uma collection do tipo Hash e permita que o usuário crie três elementos
# informando a chave e o valor. No final do programa para cada um 
# desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

elementos = Hash.new

3.times do
    puts 'informe uma chave: '
    chave = gets.chomp
    puts 'informe um valor: '
    valor = gets.chomp

    elementos[chave] = valor
end

elementos.each do |c, v|
    puts "Uma das chaves é: #{c} e o seu valor é: #{v}\n"
end
