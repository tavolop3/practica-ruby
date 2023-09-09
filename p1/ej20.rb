class MiClase
  @variable_instancia1 = 1
  @variable_instancia2 = 'valor'

  def initialize
    @variable_instancia2 = 'valor'
  end

  def metodo1; end

  def metodo2; end

  def self.metodo_estatico; end
end

puts "Ancestros de la clase #{MiClase.ancestors}"
puts "Lista de métodos de la clase #{MiClase.methods - Object.methods}"
puts "Lista de métodos de instancia #{MiClase.instance_methods(false)}"
puts "Variables de instancia #{MiClase.instance_variables}"
puts "Valor de variable_instancia2: #{MiClase.new.instance_variable_get(:@variable_instancia2)}"
puts "Valor establecido de variable_instancia2: #{MiClase.new.instance_variable_set(:@variable_instancia2,
                                                                                    'Nuevo valor')}"
