require 'pry'

class CoinCounter
  attr_reader(:total_value)
  attr_accessor(:pennies, :nickles, :dimes, :quarters)

  def initialize(total_value)
    @total_value = total_value
    @pennies = 0
    @nickles = 0
    @dimes = 0
    @quarters = 0
  end

  def count_coins()
    return "Pennies: #{@total_value}"
  end

end

Michael Reiersgaard <michael.reiersgaard@gmail.com>