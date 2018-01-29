def multiples_of_3_and_5
  low = 0
  high = 1000
  sum = 0

  (low..high).each do |i|
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end

  sum
end

puts "Sum of all multiples of 3 and 5 between 0 and 1000 is:"
puts multiples_of_3_and_5
