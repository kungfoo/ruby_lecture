numbers = [2,4,6,7,8,11]

puts numbers.find { |i| i % 3 == 0 } # => 6
puts numbers.find_all { |i| i % 2 == 0 }.join(',')
# => 2,4,6,8
puts numbers.collect { |i| i*2 }.inspect
# => [4, 8, 12, 14, 16, 22]
