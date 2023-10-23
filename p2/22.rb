class NoEsUnaPalabra < StandardError; end
class EsUnStringVacio < StandardError; end

class Palabra
  def initialize(palabra)
    raise NoEsUnaPalabra, "<#{palabra}> no es una palabra" if !palabra.empty? && palabra.include?(' ')

    raise EsUnStringVacio, 'Es un string vacio' if palabra.strip.empty?

    @palabra = palabra
  end

  def vocales
    @palabra.downcase.scan(/[aeiou]/)
  end

  def consonantes
    p = @palabra.downcase.each_char.to_a
    (p - vocales).uniq
    # @palabra.downcase.scan(/[bcdfghjklmnñpqrstvwxyz]/).uniq
  end

  def es_panvocalica?
    consonantes.size == 5
  end

  def es_palindroma?
    @palabra.downcase == @palabra.downcase.reverse
  end

  def gritando
    @palabra.upcase
  end

  def en_jaquer
    jaquer_map = { 'a' => '4', 'e' => '3', 'i' => '1', 'o' => '0', 'u' => '2' }
    @palabra.gsub(/[aeiou]/, jaquer_map)
  end
end

palabra = Palabra.new('NeuquEn')
p palabra.vocales
p palabra.consonantes
p palabra.es_panvocalica?
p palabra.es_palindroma?
p palabra.gritando
p palabra.en_jaquer
