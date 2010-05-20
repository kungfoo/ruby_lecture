require "song"

class Jukebox
  attr_accessor :songs
  
  def initialize
    @songs = []
  end
  
  def << (song)
    @songs << song
  end
  
  def each_song
    @songs.each{ |s| yield s }
  end
  
  def start
    # start playing songlist here.
  end
  
  def stop
    # stop playing songlist, keep track of state...
  end
end

j = Jukebox.new
j << Song.new("Bloody Mary", 200)
j << Song.new("Hells Bells", 420)
j << Song.new("Bulls on Parade", 320)

j.each_song { |song| puts song.name }

# >> Bloody Mary
# >> Hells Bells
# >> Bulls on Parade
