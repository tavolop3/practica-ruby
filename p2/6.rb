class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario)
    usuario.puede_ver? self
  end

  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar? self
  end

  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar? self
  end
end

class Usuario
  attr_accessor :email, :pass

  def initialize(email, pass)
    self.email = email
    self.pass = pass
  end

  def puede_ver?(documento) end

  def puede_modificar?(documento) end

  def puede_borrar?(documento) end

  def to_s
    "#{email} (#{self.class.name})"
  end
end

class Lector < Usuario
  def puede_ver?(documento)
    documento.publico
  end

  def puede_modificar?(_documento)
    false
  end

  def puede_borrar?(_documento)
    false
  end

end


class Redactor < Lector
  def puede_modificar?(documento)
    documento.creado == self
  end
end

class Director < Usuario
  def puede_ver?(documento)
    true
  end

  def puede_modificar?(documento)
    documento.borrado
  end
end

class Administrador < Director
  def puede_ver?(documento)
    true
  end

  def puede_borrar?(documento)
    true
  end
end

lector = Lector.new("elhector@example.org","contra1234")
p lector.to_s
# => "elhector@example.org (Lector)"

administrador = Administrador.new("admin@example.org","eladminpass")
p administrador.to_s
# => "admin@example.org (Administrador)"