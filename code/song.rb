class Song
  @@seconds_per_minute = 60
  
  attr_accessor :name, :length
  
  def initialize(name, length)
    @name = name
    @length = length
  end
  
  def length_in_minutes()
    @length / @@seconds_per_minute
  end
end

# using this class:
s = Song.new("bloody mary", 200)
puts "'#{s.name}' is about #{s.length_in_minutes} minutes long!"
s.length = 500
puts "'#{s.name}' is now about #{s.length_in_minutes} minutes long!"

# >> 'bloody mary' is about 3 minutes long!
# >> 'bloody mary' is now about 8 minutes long!
