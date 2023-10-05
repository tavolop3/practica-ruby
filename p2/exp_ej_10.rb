module Countable
    module ClassMethods # mantener este nombre como convención
        def count_invocations_of(method_name)
            #method_name.each do |method| do ## esto podria iterarse por cada metodo con *method_name
            #para pasarle todos los metodos en vez de pasarlos por cada uno
            alias_method "orig_#{method_name}".to_sym, method_name #salva el método que se va a pisar

            define_method(method_name) do #pisa el método recibido
                invocations_count[method_name] += 1# incrementa la cantidad de veces que se invoca
                send("orig_#{method_name}".to_sym) # invoca el método original
            end
        end
    end 

    def self.included(base)
        base.extend(ClassMethods)
    end

    def invocations_count
        @invocations_count ||= Hash.new(0) ## si no existe se crea el hash con defaults en 0
    end

    def invoked?(method_name)
        invoked(method_name).positive?
    end

    def invoked(method_name)
        invocations_count[method_name]
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
    # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
    count_invocations_of :hi
end

a = Greeter.new
b = Greeter.new
p a.invoked? :hi
# => false
p b.invoked? :hi
# => false
p a.hi
# Imprime "Hey!"
p a.hi
p a.invoked :hi
# => 2
p b.invoked :hi
# => 0