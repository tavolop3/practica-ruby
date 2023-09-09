def multiplos_de(multiplos, tope)
  1.upto(tope).inject(0) do |sum, num|
    multiplos.all? { |multiplo| (num % multiplo).zero? } ? sum + num : sum
  end
end

p multiplos_de([3, 5], 100)
# => 315
p multiplos_de([3, 5, 17, 28, 65], 100_000)
# => 92820
