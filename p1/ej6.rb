def tiempo_en_palabras(tiempo)
  case tiempo.min
  when 0..55
    if(tiempo.hour == 1)
      palabras = "Es la "
    else
      palabras = "Son las "
    end

    if(tiempo.min <= 34)
      palabras += "#{tiempo.hour} "
    else
      palabras += "#{tiempo.hour+1} "
  end 
  when 56..59
    if(tiempo.hour+1 == 1)
      palabras = "Casi es la #{tiempo.hour + 1} " 
    else
      palabras = "Casi son las #{tiempo.hour + 1} "
    end
  end

  case tiempo.min  
  when 0..10
    palabras += "en punto"
  when 11..20
    palabras += "y cuarto"
  when 21..34
    palabras += "y media"
  when 35..44
    palabras += "menos veinticinco"
  when 45..55
    palabras += "menos cuarto"
  end

  puts palabras
end

tiempo_en_palabras(Time.new(2023, 10, 21, 10, 1))
# => "Son las 10 en punto"
tiempo_en_palabras(Time.new(2023, 10, 21, 9, 33))
# => "Son las 9 y media"
tiempo_en_palabras(Time.new(2023, 10, 21, 8, 45))
# => "Son las 9 menos cuarto"
tiempo_en_palabras(Time.new(2023, 10, 21, 6, 58))
# => "Casi son las 7"
tiempo_en_palabras(Time.new(2023, 10, 21, 0, 58))
# => "Casi es la 1"
tiempo_en_palabras(Time.new(2023, 10, 21, 1, 0))
# => "Es la 1 en punto"

#capaz se pueda simplificar pero para lo que se busca en este ej esta bien