# Utilizando uma collection do tipo Array, escreva um programa que receba 3
# números e no final exiba o resultado de cada um deles elevado a segunda potência.

numeros = []

3.times do
    puts 'informe um números: '
    num = gets.chomp
    num = num.to_i ** 2
    numeros.push(num)
end

puts 'os números elevados a segunda potêncisa são: ' + numeros.to_s