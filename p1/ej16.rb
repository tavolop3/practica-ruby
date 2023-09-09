def rot(cadena, nro)
  resultado = ''
  cadena.each_char do |caracter|
    if ('A'..'z').include?(caracter)
      offset = ('A'..'Z').include?(caracter) ? 'A'.ord : 'a'.ord
      resultado += (((caracter.ord - offset + nro) % 26) + offset).chr
    else
      resultado += caracter
    end
  end
  resultado
end

p rot('¡Bienvenidos a la cursada 2023 de TTPS Opción Ruby!', 13)
# => "¡Ovrairavqbf n yn phefnqn 2023 qr GGCF Bcpvóa Ehol!"
