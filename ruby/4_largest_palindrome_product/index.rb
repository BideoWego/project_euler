def is_palidrome(string)
  length = string.length
  is_even = length % 2 == 0
  middle = (is_even) ? length / 2 : length / 2 + 1
  left = string[0..middle - 1]
  right = string[middle..-1]
  left == right.reverse
end


def palindrome_products_of(digits)
  max = ("9" * digits).to_i
  min = ("1" + ("0" * (digits - 1))).to_i
  a = max
  accumulator = []
  difference = max - min + 1
  difference.times do |i|
    b = max
    difference.times do |j|
      string = (a * b).to_s
      accumulator << string if is_palidrome(string)
      b -= 1
    end
    a -= 1
  end
  accumulator
end

palindromes = palindrome_products_of(3)

max =  palindromes.max

puts "The largest palindrome made from the product of two 3-digit numbers is: " + max
