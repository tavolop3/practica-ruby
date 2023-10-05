class GenericFactory
    def self.create(**args)
        new(**args)
    end

    def initialize(**args)
        raise NotImplementedError
    end
end

class SpecificFactory < GenericFactory
    def initialize
        p "se inicializa specific factory"
    end
end

s = SpecificFactory.initialize