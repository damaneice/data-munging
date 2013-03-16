require_relative 'input'
require_relative 'munging'

input = Input.new 
dataMunging = Munging.new(input.read('weather.dat'))
puts dataMunging.findSmallestRange
dataMunging = Munging.new(input.read('football.dat'))
puts dataMunging.findSmallestRange
