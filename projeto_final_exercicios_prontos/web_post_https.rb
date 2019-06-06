require 'net/http'

# Vocẽ inicializou um objeto Net::HTTP::Post.new() 
# passando como argumento o caminho da url
req = Net::HTTP::Post.new('/api/users')
# Depois informou quais são os  parâmetros a serem enviados com o método set_form_data
req.set_form_data({ name:'Mario', job:'Encanador'})

# Por fim utilizou o método start para criar 
# uma conexão com o servidor e dentro de um bloco fez a requisição POST
response = Net::HTTP.start('reqres.in', use_ssl: true) do |http|
    http.resquest(req)
end