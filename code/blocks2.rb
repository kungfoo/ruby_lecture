values = [1,2,3,75,2,234,22,447,88]

result = []

values.each do |v|
  result << v
  result << v * v
end

puts result.join(',')