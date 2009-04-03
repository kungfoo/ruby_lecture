require "yaml"
require "song.rb"

class Collection
  Collection_File = "collection.yml"
  
  def initialize
    @songlist = []
    songs = YAML.load_file(Collection_File)
    songs.each { |hash| @songlist << Song.new(hash) }
  end
  
  def print_song_list
    @songlist.each{ |song| puts song }
  end
end