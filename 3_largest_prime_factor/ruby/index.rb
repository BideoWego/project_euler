def largest_prime_factor(n)
  factors = []
  prime_factor = i = 2

  while n > 1
    while n % i == 0
      prime_factor = i
      n /= i
      p factors
    end
    i += 1
  end

  prime_factor
end

puts "The largest prime factor of the number 600851475143: "
puts largest_prime_factor(600851475143)
