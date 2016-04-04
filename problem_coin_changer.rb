require 'pry'
class CoinChanger
  attr_accessor :changed

  COINS = [1, 2, 5, 10, 20, 50, 100, 200, 500]

  def initialize(amount)
    @changed = []
    make_change(amount)
  end

  def make_change(amount)
    return changed if amount == 0

    max_coin = CoinChanger::COINS.select {|c| c <= amount}.max

    if (amount - max_coin) >= 0
      changed.push(max_coin)
      tmp = amount - max_coin
      make_change(tmp)
    end
  end
end

amount = 291
c_c = CoinChanger.new(amount)

puts "final result: #{amount} changed to #{c_c.changed}"
