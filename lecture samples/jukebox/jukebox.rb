require "collection.rb"

class Jukebox
  def initialize
    @collection = Collection.new
    @line = "*" * 42
  end
  
  def print_songlist
    puts "Songs currently loaded:"
    puts @line
    @collection.print_songlist
    puts @line
  end
  
  def search(string)
    @collection.songlist.find_all { |song| song.contains?(string)}
  end
  
  def play(songs)
    songs.each { |song| puts "playing song: #{song}........." }
    nil
  end
end


puts "Welcome to Ruby-Jukebox....."
jb = Jukebox.new
jb.print_songlist

puts "searching for: 'prim'"
puts jb.search("prim")

puts "playing all songs containing 'mus'"
jb.play(jb.search("mus"))