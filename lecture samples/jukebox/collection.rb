require "yaml"
require "song.rb"

class Collection
  COLLECTION_FILE = "collection.yml"
  
  attr_reader :songlist
  
  def initialize
    @songlist = []
    songs = YAML.load_file(COLLECTION_FILE)
    songs.each { |hash| @songlist << Song.new(hash) }
  end
  
  def print_songlist
    @songlist.each{ |song| puts song }
  end
end