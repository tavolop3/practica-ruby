module Reverso
    def di_tcejbo
        p self.class.object_id.to_s.reverse
    end

    def ssalc
        p self.class.name.to_s.reverse 
    end
end

class Coso
    include Reverso
end

cosito = Coso.new
cosito.di_tcejbo
cosito.ssalc

# di_tcejbo: Imprime el object_id del receptor en espejo (en orden inverso).
# ssalc: Imprime el nombre de la clase del receptor en espejo