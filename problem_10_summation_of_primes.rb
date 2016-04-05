# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#

require "#{Dir.getwd}/prime_factors.rb"

two_million = 2000000
sum = PrimeFactors.new(two_million).generate_primes.inject(:+)
puts sum

