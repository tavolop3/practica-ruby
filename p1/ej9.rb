def string_reverso(cadena)
  cadena.reverse
end

def string_sin_espacio(cadena)
  cadena.gsub(' ', '')
end

def string_a_arreglo_ascii(cadena)
  cadena.split('').map(&:ord)
end

def string_remplaza_vocal(cadena)
  cadena.gsub(/a|A/, '4')
        .gsub(/e|E/, '3')
        .gsub(/i|I/, '1')
        .gsub(/o|O/, '0')
        .gsub(/u|U/, '6')
end

cadena = 'cadenita de prueba'
p string_reverso(cadena)
p string_sin_espacio(cadena)
p string_a_arreglo_ascii(cadena)
p string_remplaza_vocal(cadena)

