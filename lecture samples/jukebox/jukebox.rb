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
  
  def play(arg)
    case arg
      when Collection
        play_collection arg
      when Integer
        play_single_song arg
    end
  end
  
  private
  def play_collection(collection)
    collection.each_song do |song|
      @player.play song
    end
  end
  
  def play_single_song(num)
    @player.play @collection.songlist[num]
  end
end
