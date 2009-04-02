values = [1,2,3,75,2,234,22,447,88]

result = []

values.each do |v|
  result << v
  result << v * v
end

puts result.join(',')

# >> 1,1,2,4,3,9,75,5625,2,4,234,54756,22,484,447,199809,88,7744
