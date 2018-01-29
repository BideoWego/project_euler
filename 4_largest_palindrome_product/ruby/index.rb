def palindrome?(n)
  digits = Math.log10(n).ceil
  half = digits / 2

  left = n
  right = n
  is_palindrome = true
  half.times do |i|
    digits -= 1

    r = right % 10
    l = left / (10 ** digits)

    if r != l
      is_palindrome = false
      break
    end

    right /= 10
    left -= l * (10 ** digits)
  end

  is_palindrome
end

def largest_palidrome_product
  digits = 3
  max = (10**digits).pred
  min = 10**digits.pred

  is_palindrome = nil
  max_palindrome = -1
  max.downto(min) do |i|
    max.downto(min) do |j|
      product = i * j

      is_palindrome = palindrome?(product)
      if is_palindrome
        max_palindrome = product > max_palindrome ? product : max_palindrome
      end
    end
  end

  max_palindrome
end

puts "The largest palindrome made from the product of two 3-digit numbers is: "
puts largest_palidrome_product
