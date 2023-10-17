def ejecutor(bloque, *args)
  bloque.call(*args)
rescue RuntimeError
  print('Hay algo mal que no anda bien')
  :rt
rescue NoMethodError => e
  print("Y este método? error: #{e}")
  :nm
rescue StandardError
  print('Y ahora?')
  raise
end

ejecutor(->(*palabras) { palabras.each { |palabra| print("#{palabra} ") } }, 'hola', 'como', 'va')

ejecutor(->(*palabras) { palabras.each { raise 'dou' } }, 'hola', 'como', 'va')

ejecutor(->(*palabras) { palabras.each { |palabra| printar("#{palabra} ") } }, 'hola', 'como', 'va')

ejecutor(lambda { |*numeros|
  numeros.each do |num1|
    p(num1 / 0)
  end
}, 1, 2)
