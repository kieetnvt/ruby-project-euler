# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
#

require "#{Dir.getwd}/prime_factors.rb"

max_pos = 10001
prime_factor = PrimeFactors.new(3)

primes = [2]

while primes.length < max_pos
  primes << prime_factor.number if prime_factor.is_prime?
  prime_factor.number += 1
end

puts primes.first
puts primes.last
