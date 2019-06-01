# JogadorDeFutebol
# Métodos
# correr -> Imprime a mensagem “Correndo atrás da bola”
# require File.expand_path('../esportista.rb', __FILE__)
require_relative 'esportista'
class JogadorDeFutebol < Esportista

    def correr
        puts 'Correndo atrás da bola'
    end

    jogador = JogadorDeFutebol.new
    jogador.correr
    jogador.competir
end