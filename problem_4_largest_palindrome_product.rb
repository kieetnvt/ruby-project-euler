# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

min = 99
max = 999
so_hang_a = so_hang_b = max_number = 0

(min * min).upto(max * max) do |number|
  if palindrome?(number)
    puts number
    min.upto(max) do |element|
      if number % element == 0
        tmp = number / element
        next if tmp < min || tmp > max
        max_number = number
        so_hang_a = element
        so_hang_b = tmp
      end
    end
  end
end

puts "RESULTS: #{max_number} = #{so_hang_a} x #{so_hang_b}"
