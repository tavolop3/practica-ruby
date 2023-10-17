def da_nil?
  resul = yield
  resul.nil? || false
end

p(da_nil? {})
# => true
p(da_nil? do
  'Algo distinto de nil'
end)
# => false
