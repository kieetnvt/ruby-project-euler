n = 600851475143

def is_prime_number?(number)
  return false if number < 2
  return !2.upto(Math.sqrt(number) + 1).detect {|e| number % e == 0}
end

max = 2
2.upto(n).each do |e|
  if is_prime_number?(e) && n % e == 0
    max = e
    puts "RESULTS: #{max}"
  end
end


