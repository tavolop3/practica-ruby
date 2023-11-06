def procesar_archivo(archivo)
  cant = 0
  File.open(archivo).each_line do |linea|
    p yield(linea)
    cant += 1
  rescue StandardError => e
    puts "Error encontrado: #{e.message} (#{e.class})"
  end
  cant
end

p procesar_archivo('/tmp/datos.txt') { |linea| Integer(linea) }
