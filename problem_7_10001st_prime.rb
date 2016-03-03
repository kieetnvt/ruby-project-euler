# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
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
