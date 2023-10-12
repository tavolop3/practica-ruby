class GenericFactory
    def self.create(**args)
        new(**args)
    end

    def initialize(**args)
        raise NotImplementedError
    end
end

class ClaseEspecifica1 < GenericFactory
    def initialize
        p "se inicializa ce1"
    end
end

class ClaseEspecifica2 < GenericFactory
    attr_accessor :nombre, :apellido
    def initialize(nombre:, apellido:) # espera un hash con las keys y un valor si o si, no podes pasarle solo apellido
        @nombre = nombre
        @apellido = apellido
    end
end

s = ClaseEspecifica1.create
p s
otra = ClaseEspecifica2.create(nombre: "tavo",apellido: "lop")
p otra