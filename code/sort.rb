values = [3,4,5,63,2,1,3,5,7,8,9,32]

forward = values.sort
reverse = values.sort{ |a,b| b <=> a }

puts forward.inspect
puts reverse.inspect