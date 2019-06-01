# Maratonista
# Métodos
# correr-> Imprime a mensagem “Percorrendo o circuito”
# require File.expand_path('../esportista.rb', __FILE__)
require_relative 'esportista'
class Maratonista < Esportista

    def correr
        puts 'Percorrendo o circuito'
    end

    maratonista = Maratonista.new
    maratonista.correr
    maratonista.competir

end