# frozen_string_literal: true

def longitud(arr)
  arr.map(&:length)
end

p longitud(['TTPS', 'Opción', 'Ruby', 'Cursada 2023'])
# => [4, 6, 4, 12]
