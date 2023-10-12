module GenericFactory
    def create(**args) # le quito el self para que la clase pueda acceder a este metodo
        new(**args)
    end

    # def initialize(**args)
    #     raise NotImplementedError
    # end
end

class ClaseEspecifica1 # < GenericFactory -> ya no va porque no hereda sino que extiende de
    extend GenericFactory # extiende los metodos de clase

    def initialize
        p "se inicializa ce1"
    end
end

class ClaseEspecifica2
    extend GenericFactory # extiende los metodos de clase, lo demas sigue igual

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

# 