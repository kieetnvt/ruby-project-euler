class PrimeFactors
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def is_prime?
    return false if number < 2
    return !2.upto(Math.sqrt(number) + 1).detect {|e| number % e == 0}
  end

  def generate_primes
    primes = [2]
    i = 2
    while i < number
      primes << i if PrimeFactors.new(i).is_prime?
      i += 1
    end
    primes
  end
end
