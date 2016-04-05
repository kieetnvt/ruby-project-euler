# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#

require "#{Dir.getwd}/prime_factors.rb"

n = 600851475143
max = 2
2.upto(n).each do |e|
  prime_factor = PrimeFactors.new(e)
  if prime_factor.is_prime? && n % e == 0
    max = e
    puts "RESULTS: #{max}"
  end
end


