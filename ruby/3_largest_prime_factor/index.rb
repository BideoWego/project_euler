def prime_factors_of(n)
  factors = []
  i = 2

  while n > 1
    while n % i == 0
      factors << i
      n /= i
    end
    i += 1
  end

  factors
end

n = 600851475143

largest_prime_factor = prime_factors_of(n).max

puts "The largest prime factor of the number 600851475143: " + largest_prime_factor.to_s
