class Hash
  def reverse_merge(other_hash)
    other_hash.merge(self)
  end

  def reverse_merge!(other_hash)
    replace(reverse_merge(other_hash))
  end
end

def open_door(door, options = {})
  options.reverse_merge! :speed => :slow, :direction => :pull
  "opening #{door} #{options[:speed]} using #{options[:direction]}"
end

puts open_door "side door"
puts open_door "front door", :speed => :fast
puts open_door "back door", :direction => :push
# >> opening side door slow using pull
# >> opening front door fast using pull
# >> opening back door slow using push
