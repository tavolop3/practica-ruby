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