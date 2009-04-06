require "collection.rb"

class Jukebox
  def initialize
    @collection = Collection.new
    @line = "*" * 42
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
    collection.each_song { |song| puts "playing song: #{song}........." }
    nil
  end
end


puts "Welcome to Ruby-Jukebox....."
jb = Jukebox.new
jb.print_songlist

puts "searching for: 'prim'"
puts jb.search("prim").pretty_print

puts "playing all songs containing 'mus'"
jb.play(jb.search("mus"))

