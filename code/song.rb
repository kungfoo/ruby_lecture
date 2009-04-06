class Song
  @@seconds_per_minute = 60
  
  attr_accessor :name, :seconds
  
  def initialize(name, seconds)
    @name = name
    @seconds = seconds
  end
  
  def minutes
    @seconds / @@seconds_per_minute
  end
  
  def minutes=(mins)
    @seconds = mins * 60
  end
  
  def to_s
    "'#{name}', about #{minutes} minutes long"
  end
end

# using this class:
s = Song.new("bloody mary", 200)
puts s

s.seconds = 500
puts s

s.minutes = 4.2
puts s

# >> 'bloody mary', about 3 minutes long
# >> 'bloody mary', about 8 minutes long
# >> 'bloody mary', about 4.2 minutes long
