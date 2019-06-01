# Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash
# e no final imprima a chave e valor do elemento resultante.

maior = Hash.new
numbers = {a: 10, b: 30, c: 220, d: 125, e: 95}

valor = 0
chave_anterior = ''

numbers.each do |k, v|
    if maior.empty?
        maior[k] = v
        valor = v
        chave_anterior = k
    else
        if v > valor
            maior.delete(chave_anterior)
            maior[k] = v
            valor = v
            chave_anterior = k
        end
    end
end

puts maior
