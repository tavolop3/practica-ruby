def cuanto_falta?(tiempo = nil)
  now = Time.now
  tiempo = Time.new(now.year, now.month, now.day + 1, 0, 0, 0) if tiempo.nil?
  (tiempo - now) / 60
end

p cuanto_falta?(Time.new(2032, 12, 31, 23, 59, 59))
# => Retorna la cantidad de minutos que faltan para las 23:59:59 del 31/12/2032
p cuanto_falta?
# => Retorna la cantidad de minutos que faltan para la medianoche de hoy
