#
# find the number in list of primes which has position is 10001st
#

def is_prime_number?(number)
  return false if number < 2
  return !2.upto(Math.sqrt(number) + 1).detect {|e| number % e == 0}
end

max_pos = 10001

number = 3

primes = [2]

while primes.length < max_pos
  primes << number if is_prime_number?(number)
  number += 1
end

puts primes.first
puts primes.last
