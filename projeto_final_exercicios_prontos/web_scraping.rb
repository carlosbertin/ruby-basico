# Web Scraping
# O que você faria se precisasse percorrer diversas páginas de um site 
# coletando um tipo específico de informação? Ou recuperar dados que não 
# são fornecidos por uma API?

# O Web Scraping existe para evitar essas tarefas manuais, ou então,
# trabalhosas. Uma técnica que automatiza o processo de extração de dados 
# de uma página web.

# Uma das bibliotecas mais utilizadas no mundo ruby para fazer isso é a nokogiri

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)
# chamada https
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')

puts h1.content

# No começo nenhuma novidade. Você realizou uma requisição para o site do onebitcode
# Depois utilizou Nokogiri::HTML para parsear o documento HTML
# Por fim, você fez uso do método at para buscar a tag h1 e imprimir o seu conteúdo.