values = [3,4,5,63,2,1,3,5,7,8,9,32]

forward = values.sort
reverse = values.sort{ |a,b| b <=> a }

puts forward.inspect
puts reverse.inspect

# >> [1, 2, 3, 3, 4, 5, 5, 7, 8, 9, 32, 63]
# >> [63, 32, 9, 8, 7, 5, 5, 4, 3, 3, 2, 1]
