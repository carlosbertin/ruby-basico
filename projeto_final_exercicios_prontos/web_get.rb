# No início, é preciso  adicionar a biblioteca Net:HTTP
require 'net/http'

# Depois é feito uma requisição HTTP do tipo GET para o domínio example.com, com o caminho /index.html.
# É a mesma coisa que entrar no browser e procurar pelo endereço http://example.com/index.html
example = Net::HTTP.get('example.com', '/index.html')

# Você salvou a resposta dentro de uma variável para depois escrevê-la dentro de um arquivo (example.html).
# Quando você utilizou File.open para um arquivo inexistente, o ruby detectou isso e criou o
# arquivo antes de escrever as informações nele.
File.open('example.html', 'w') do |line|
    line.puts(example)
end