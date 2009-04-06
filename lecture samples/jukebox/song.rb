class Song
  attr_reader :title, :artist
  
  def initialize(hash)
    @artist = hash["artist"]
    @title = hash["title"]
    @seconds = hash["length"]
  end
  
  def Song.from_attributes(artist, title, seconds)
    Song.new({"artist" => artist, "title" => title, "length" => seconds})
  end
  
  def minutes
    @seconds / 60
  end
  
  def seconds
    @seconds % 60
  end
  
  def length=(length_in_seconds)
    @seconds = length_in_seconds
  end
  
  def to_s
    %("#{@title}" by #{@artist}, #{minutes}min #{seconds}s)
  end
  
  def contains?(string)
    regex = Regexp.new(string, "i")
    return (@artist =~ regex or @title =~ regex)
  end
end
