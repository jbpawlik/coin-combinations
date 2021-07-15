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
    until value === 0
      case value
      when 1..4
        @pennies = value
        value -= value
      when 5..9
        @nickles = (value/5).floor()
        value -= 5
      when 10..24
        @dimes = (value/10).floor()
        value -= 10 * @dimes
      else
        @quarters = (value/25).floor()
        value -= 25 * @quarters
      end
    end
    coin_array = [@quarters, @dimes, @nickles, @pennies]
    coin_name_array = ["Quarters: ", "Dimes: ", "Nickels: ", "Pennies: "]
    output_array = []
    coin_array.each_with_index do |element, index|
      if element != 0
        output_array.push(coin_name_array[index]+element.to_s)
      end
    end
    return output_array.join(", ")
  end
end