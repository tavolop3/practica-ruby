fibonacci = Enumerator.new do |yielder|
  a = 0
  b = 1
  loop do
    yielder << a
    a, b = b, a + b
  end
end

p fibonacci.first(10)
