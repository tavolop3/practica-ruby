def multiplos_de_3y5(tope)
  1.upto(tope).inject(0) { |sum, num| (num % 3).zero? && (num % 5).zero? ? sum + num : sum }
end

p multiplos_de_3y5(100)
# => 315
