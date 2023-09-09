# frozen_string_literal: true

def listar(hash)
  str = ''

  hash.each_with_index do |(clave, valor), indice|
    str += "#{indice + 1}. #{clave}: #{valor}\n"
  end

  str
end

hash = { perros: 2, gatos: 2, peces: 0, aves: 0 }
# => "1. perros: 2\n2. gatos: 2\n3. peces: 0\n4. aves: 0"
puts listar(hash)
