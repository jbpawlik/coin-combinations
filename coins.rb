#! /usr/bin/env ruby
require './lib/coins.rb'

puts 'Enter the amount of cents you wish to convert to coins'
input_value = CoinCounter.new(gets.chomp.to_i)
puts input_value.count_coins