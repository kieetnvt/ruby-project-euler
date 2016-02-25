n = 600851475143

def is_prime_number?(num)
  return false if num < 2
  2.upto(Math.sqrt(num) + 1).each do |e|
    return false if num % e == 0
  end
  true
end

max = 2
2.upto(n).each do |e|
  if is_prime_number?(e) && n % e == 0
    max = e
    puts "RESULTS: #{max}"
  end
end


