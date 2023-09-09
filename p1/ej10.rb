resul = %i[upcase downcase capitalize swapcase].map do |meth|
  'TTPS Ruby'.public_send(meth)
end

puts resul
