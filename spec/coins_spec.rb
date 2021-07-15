require 'rspec'
require 'coins'

describe('#coin_counter') do
  it("should return one penny if we have one cent") do
    value = CoinCounter.new(1)
    expect(value.count_coins).to(eq('Pennies: 1'))
  end
end