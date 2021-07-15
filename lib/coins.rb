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
    value = @total_value
    case value
    when 1..4
      @pennies = value
      "Pennies: #{@pennies}"
    when 5
      @nickles = value/5
      "Nickels: #{@nickles}"
    end
  end
end

