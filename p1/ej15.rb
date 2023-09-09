# frozen_string_literal: true

def rot13(cadena)
  resultado = ''
  cadena.each_char do |caracter|
    if ('A'..'z').include?(caracter)
      offset = ('A'..'Z').include?(caracter) ? 'A'.ord : 'a'.ord
      resultado += (((caracter.ord - offset + 13) % 26) + offset).chr
    else
      resultado += caracter
    end
  end

  resultado
end

# segunda implementacion con tr que mapea cada entrada 'A-Za-z' a la salida 'N-ZA-Mn-za-m'
def rot13_tr(cadena)
  cadena.tr('A-Za-z', 'N-ZA-Mn-za-m')
end

p rot13_tr('¡Bienvenidos a la cursada de TTPS Opción Ruby!')
# => "¡Ovrairavqbf n yn phefnqn qr GGCF Bcpvóa Ehol!"
