def even_fibonacci_numbers
  a = 1
  b = 2
  sum = 2

  while a < 4000000
    c = a + b
    sum += c if c % 2 == 0
    a = b
    b = c
  end

  sum
end

puts "Sum of all even fibonacci numbers below 4 million is:"
puts even_fibonacci_numbers
