require 'rspec'
require 'coins'

describe('#coin_counter') do
  it("should return one penny if we have one cent") do
    value = CoinCounter.new(1)
    expect(value.count_coins).to(eq('Pennies: 1'))
  end
  it("should return number of pennies if 1-4 cents") do
    value = CoinCounter.new(4)
    expect(value.count_coins).to(eq('Pennies: 4'))
  end
  it("should return one nickel if we have five cents"
  ) do
    value = CoinCounter.new(5)
    expect(value.count_coins).to(eq('Nickels: 1'))
  end
  it("should return one penny and one nickel if we have six cents") do
    value = CoinCounter.new(6)
    expect(value.count_coins).to(eq('Nickels: 1, Pennies: 1'))
  end
  it("should return one dime if we have ten cents") do
    value = CoinCounter.new(16)
  end
end