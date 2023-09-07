def contar(cadena, subcadena)
    cadena.downcase.scan(/ ?#{subcadena.downcase} /).size
end

puts contar("La casa de la esquina tiene la puerta roja y la ventana blanca
. la", "la")
# => 4