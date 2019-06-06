require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)

https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

# O ultimo post do onebitcode encontra-se dentro das tags
# <h3> <a href=’/ultimo-post’>Título Ultimo Post</a></h3>
puts '-' * 50
puts 'Listando o post (título) do blog onebitcode.com mais recente'
puts '-' * 50
    
last_post = doc.at('h3 a')
puts last_post.content
puts last_post['href']
puts ''

puts '-' * 50
puts 'Listando todos os últimos posts (títulos) do blog onebitcode.com'
puts '-' * 50
doc.search('h3 a').each do |titulo|
    puts titulo.content
    puts titulo['href']
    puts ''
end

