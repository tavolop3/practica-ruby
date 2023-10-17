def procesar_hash(param_hash, param_proc)
  resul_hash = {}
  param_hash.each do |key, value|
    resul_hash[value] = param_proc.call(key)
  end

  resul_hash
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
p procesar_hash(hash, ->(x) { x.to_s.upcase })
# => { 1 => 'CLAVE', 'valor' => 'OTRA_CLAVE' }
