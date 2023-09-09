def notacion_hexadecimal(rgb)
  hexa = rgb.map { |color| color.to_s(16).upcase }.join('')
  "##{hexa}"
end

def notacion_entera(rgb)
  r, g, b = rgb
  r + g * 256 + b * 256.pow(2)
end

p notacion_hexadecimal([0, 128, 255])
# => '#0080FF'
p notacion_entera([0, 128, 255])
# => 16744448
