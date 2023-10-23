class Array
  def randomly(&bloque)
    if block_given?
      shuffle.each(&bloque)
    else
      to_enum(:randomly)
    end
  end
end

a = [4, 9, 2, 5, 7, 1, 3, 8, 6, 10]
p a.randomly.take(10) # sin bloque
a.randomly { |n| print("#{n} ") } # con bloque

# &bloque indica que recibe un bloque
# si hay un bloque entonces mezcla el array y le aplica el bloque a cada elemento
# sino devuelve un Enumerator que recorre el array aleatoriamente
