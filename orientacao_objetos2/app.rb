require_relative 'mercado'
require_relative 'produto'
# require File.expand_path('../produto.rb', __FILE__)
# require File.expand_path('../mercado.rb', __FILE__)

puts 'informe o nome do produto: '
nome_produto = gets.chomp
puts 'informe o preço do produto: '
preco_produto = gets.chomp
produto = Produto.new(nome_produto, preco_produto)

mercado = Mercado.new(produto)
mercado.comprar









