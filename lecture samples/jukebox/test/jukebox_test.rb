require "test/unit"
require "rubygems"
require "flexmock/test_unit"
require "jukebox.rb"

class TestJukebox < Test::Unit::TestCase
  def test_play_filtered_collection
    collection = create_small_collection
    filtered = collection.filter("abba")
    
    mock_player = flexmock("mock player") do |p|
      p.should_receive(:play).once
    end
    
    box = Jukebox.new(mock_player)
    box.play(filtered)
  end
  
  def test_play_entire_collection
    collection = Collection.new
    num_songs = collection.songlist.size
    
    mock_player = flexmock("mock player") do |player|
      player.should_receive(:play).times(num_songs)
    end
    
    box = Jukebox.new(mock_player)
    box.play(collection)
  end
  
  private
  def create_small_collection
    collection = Collection.new
    songlist = []
    abba = Song.from_attributes("abba", "schnubb", 300)
    foo = Song.from_attributes("Foo Fighters", "Grohl", 230)
    songlist << abba
    songlist << foo
    collection.songlist = songlist
    return collection
  end
end
