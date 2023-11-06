def opcion_1
  a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
  b = 3
  c = a.map do |x|
    x * b
  end
  puts c.inspect
rescue StandardError
  0
end

def opcion_2
  c = begin
    a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
    b = 3
    a.map do |x|
      x * b
    end
  rescue StandardError
    0
  end
  puts c.inspect
end

def opcion_3
  a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
  b = 3
  c = begin
    a.map { |x| x * b }
  rescue StandardError
    0
  end
  puts c.inspect
end

def opcion_4
  a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
  b = 3
  c = a.map do |x|
    x * b
  rescue StandardError
    0
  end
  puts c.inspect
end

opcion_1
opcion_2
opcion_3
opcion_4
