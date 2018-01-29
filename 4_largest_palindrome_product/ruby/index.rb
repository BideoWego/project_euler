# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palidrome_product
  digits = 3
  max = (10**digits).pred
  min = 10**digits.pred

  palindrome = nil
  max.downto(min) do |i|
    max.downto(min) do |j|
      product = i * j

      # determine if is palidrome
      # if is palidrome assign and break out of loops
    end
  end

  palindrome
end



# def is_palidrome(string)
#   length = string.length
#   is_even = length % 2 == 0
#   middle = (is_even) ? length / 2 : length / 2 + 1
#   left = string[0..middle - 1]
#   right = string[middle..-1]
#   left == right.reverse
# end


# def palindrome_products_of(digits)
#   max = ("9" * digits).to_i
#   min = ("1" + ("0" * (digits - 1))).to_i
#   a = max
#   accumulator = []
#   difference = max - min + 1
#   difference.times do |i|
#     b = max
#     difference.times do |j|
#       string = (a * b).to_s
#       accumulator << string if is_palidrome(string)
#       b -= 1
#     end
#     a -= 1
#   end
#   accumulator
# end

# palindromes = palindrome_products_of(3)

# max =  palindromes.max


puts "The largest palindrome made from the product of two 3-digit numbers is: "
puts largest_palidrome_product
