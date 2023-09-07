def reemplazar(cadena)
  cadena.gsub!("{","do\n")
  cadena.gsub!("}","\nend")
  return cadena
end

puts reemplazar("ejemplo {bloque} de codigo")
