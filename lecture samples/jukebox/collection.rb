require "yaml"
require "song.rb"

class Collection
  COLLECTION_FILE = "collection.yml"
  
  attr_accessor :songlist
  
  def initialize
    songs = YAML.load_file(COLLECTION_FILE)
    @songlist = songs.collect{ |hash| Song.new(hash) }
  end
  
  def pretty_print
    each_song{ |song| puts song }
  end
  
  def filter(string)
    result = Collection.new
    result.songlist = @songlist.select{ |song| song.contains?(string) } 
    return result
  end
  
  def each_song
    @songlist.each{ |s| yield s }
  end
end
