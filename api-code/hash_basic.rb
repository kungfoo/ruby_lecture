def foo(p)
  "p has value #{p}"
end

days = { 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday",
  4 => "Thursday", 5 => "Friday", 6 => "Saturday",
  7 => "Sunday" }

days.has_key?(2)
days.has_value?("Banana")
days.each_key{ |key| foo(key) }
days.invert # => {"Wednesday"=>3, "Tuesday"=>2, "Friday"=>5, ...}

# process keys in a sorted way
days.keys.sort.each{ |key| puts days[key]}
# >> Monday
# >> Tuesday
# >> Wednesday
# >> Thursday
# >> Friday
# >> Saturday
# >> Sunday
