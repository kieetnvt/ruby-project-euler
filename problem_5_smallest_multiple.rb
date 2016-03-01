# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def uoc_chung_lon_nhat(a, b)
  if a % b == 0
    uoc = b
  else
    uoc = uoc_chung_lon_nhat(b, a % b)
  end
end

def boi_chung_nho_nhat(a, b)
  (a * b) / uoc_chung_lon_nhat(a, b)
end

boi = 1
(1..20).each do |n|
  boi = boi_chung_nho_nhat(boi, n)
end

puts boi
