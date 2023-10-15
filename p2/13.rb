module Opositer
  def opposite
    !self
  end
end

class FalseClass
  include Opositer
end

class TrueClass
  include Opositer
end

p(true.opposite)
# => false
p(false.opposite)
# => true
p(true.opposite.opposite)
# => true
