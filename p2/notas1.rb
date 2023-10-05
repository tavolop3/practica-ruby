primera explicacion práctica de la 2da práctica

son 4 practicas y desp empieza el tp con 2 entregas a fin de cursada

en el 10 hay q hacer un hack para incluir tanto los metodos de instancia ocmo los de clase.

las clases son modulos instanciables, contienen logica pero no estado

modulo es una clase y la clase hereda de modulo

los modulos no se pueden instanciar

self.nombre --> metodo de clase

con include se incluyen los metodos de instancia

los metodos de clase del modulo no se llevan a quien lo incluye o extiende

module MiMixin
    module MetodosDeClase
        def ganador
            new # -> esto lo ejecuta la clase
        end
    end

    def soy_ganador?
        rand > 0.5
    end

    def self.included(clase)
        clase.extend(MetodosDeClase)  
        clase.include(MetodosDeInstancia) # se podria separar el soy_ganador en un metodos de instancia
        #pero es innecesario porque agrega un paso extra
        # de ultima hacemos al reves de agregar un modulo solo para metodos de instancia
        # y acá hacemos un clase.include . Igual se suele usar mas esto último.
    end
end

Sorteo.extend(MiMixin::MetodosDeClase)

acá te traes el submodulo cuando lo extendes con la clase

included es un gancho para include para agregarle lógica adicional cuando se incluya

### explicacion del ej 10 ###

count_invocations_of(sym) encapsula el metodo, cuenta la invocacion y llama al metodo

hay que usar un hash para asociar la cantidad de veces que se cuenta y el metodo llamado

## explicacion 2 ##

cada instancia cuenta las invocaciones suyas

module Countable
    module ClassMethods # mantener este nombre como convención
        def count_invocations_of(method_name)
            alias_method "orig_#{method_name}".to_sym , method_name 

            define_method{method_name} do
                invocations_count[method_name]++ # incrementa la cantidad de veces que se invoca
                send("orig_#{method_name}".to_sym) # invoca el método original
            end
        end
    end 

    def self.included(base)
        base.extend(ClassMethods)
        end
    end

    def invocations_count
        @invocations_count ||= Hash.new(0) ## si no existe se crea el hash con defaults en 0
    end

    def invoked?
    end

    def invoked
    end
end

class Greeter
    include Countable # Incluyo el Mixin
    def hi
        puts 'Hey!'
    end
    def bye
    puts 'See you!'
    end
    # Indico que quiero llevar la cuenta de veces que se invoca el mé
    todo #hi
    count_invocations_of :hi
    end
    a = Greeter.new
    b = Greeter.new
    a.invoked? :hi
    # => false
    b.invoked? :hi
    # => false
    a.hi
    # Imprime "Hey!"
    a.invoked :hi
    # => 1
    b.invoked :hi
    # => 0
end