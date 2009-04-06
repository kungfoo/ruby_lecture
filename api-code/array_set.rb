a = [1,2,3,4,5,6,7]
b = [1,3,5]
c = [8,9,10]

# union
a & b # => [1, 3, 5]

# sum
a + c # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# difference
a - b # => [2, 4, 6, 7]

# check contents
((a + c) - b).include?(3) # => false
((a + c) - b).include?(8) # => true

# remove duplicate elements
[1,2,3,4,1,1,1].uniq! # => [1, 2, 3, 4]
