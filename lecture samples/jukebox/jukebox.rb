require "collection.rb"

class Jukebox
  def initialize
    @collection = Collection.new
  end
  
  def print_songlist
    puts "Songs currently loaded:"
    line
    @collection.songlist.each { |song| puts song.to_s }
    line
  end
  
  def search(string)
    @collection.songlist.find_all { |song| song.matches(string)}
  end
  
  def play(songs)
    songs.each { |song| puts "playing song: #{song}........." }
    nil
  end
  
  def line
    puts "*" * 42
  end
end

puts "Welcome to Ruby-Jukebox....."

jb = Jukebox.new

jb.print_songlist

puts "searching for: 'prim'"
puts jb.search("prim")
jb.line

puts "playing all songs containing 'mus'"
jb.play(jb.search("mus"))