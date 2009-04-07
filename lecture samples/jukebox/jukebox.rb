require "collection.rb"

class Jukebox
  def initialize(player)
    @collection = Collection.new
    @line = "*" * 42
    @player = player
  end
  
  def print_songlist
    puts "songs loaded:"
    puts @line
    @collection.pretty_print
    puts @line
  end
  
  def search(string)
    @collection.filter(string)
  end
  
  def play(collection)
    collection.each_song do |song|
      puts "playing song #{song} on #{@player}"
      @player.play(song)
    end
  end
end