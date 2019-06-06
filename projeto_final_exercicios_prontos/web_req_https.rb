# Requisições https (será usado o método use_ssl)
# Para fazer as próximas requisições  você utilizará o site https://reqres.in
# Ele está preparado para receber e responder suas requisições, o que 
# facilitará os testes de requisições https.
require 'net/http'

# Você construiu um objeto Net::HTTP iniciando com os valores de  domínio e porta
https = Net::HTTP.new('reqres.in', 443)
# para fazer chamadas em https
https.use_ssl = true

# Fez um get para o caminho api/users
response = https.get('/api/users')
# status code
puts response.code
# status message
puts response.message
# body (json)
puts response.body