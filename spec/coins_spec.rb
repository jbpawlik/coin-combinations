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
    value = CoinCounter.new(10)
    expect(value.count_coins).to(eq('Dimes: 1'))
  end
  it("should return one dime, one nickel, and one penny if we have sixteen cents") do
    value = CoinCounter.new(16)
    expect(value.count_coins).to(eq('Dimes: 1, Nickels: 1, Pennies: 1'))
  end
  it("should return two dimes, and four pennies if we have 24 cents") do
    value = CoinCounter.new(24)
    expect(value.count_coins).to(eq('Dimes: 2, Pennies: 4'))
  end
  it("should return one quarter if we have twenty-five cents") do
    value = CoinCounter.new(25)
    expect(value.count_coins).to(eq('Quarters: 1'))
  end
end