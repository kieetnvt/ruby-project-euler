sum1 = (1..100).inject(0) {|sum, i| sum += i}
sum2 = (1..100).inject(0) {|sum, i| sum += i * i}
puts sum1 * sum1 - sum2
