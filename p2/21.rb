=begin
Escribí un enumerador que genere series de números primos con algún tope, ya sea que se de‑
tenga al alcanzar o superar un valor, o que termine su ejecución al encontrar el enésimo número
primo.
=end
require 'prime'

enum_primos = Enumerator.new do |yielder|
  primo = 1
  loop do
    primo += 1
    if primo.prime?
      yielder << primo
    end
  end
end

p enum_primos.lazy.first(5)
