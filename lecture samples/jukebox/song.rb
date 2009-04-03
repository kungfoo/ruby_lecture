class Song
  attr_reader :title, :artist
  
  def initialize(hash)
    @artist = hash["artist"]
    @title = hash["title"]
    @seconds = hash["length"]
  end
  
  def minutes
    @seconds / 60
  end
  
  def seconds
    @seconds % 60
  end
  
  def to_s
    %("#{@title}" by #{@artist}, #{minutes}min #{seconds}s)
  end
end