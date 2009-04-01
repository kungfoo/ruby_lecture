def sum(*c)
  sum = 0
  c.each {|i| sum += i}
  return sum
end

puts sum(1,2)
puts sum(1,2,3,4,5,6,7,8,9)
