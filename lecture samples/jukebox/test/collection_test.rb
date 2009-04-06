require "test/unit"
require "collection.rb"

class CollectionTest < Test::Unit::TestCase
  def setup
    @collection = Collection.new
    songlist = []
    @abba = Song.from_attributes("abba", "schnubb", 300)
    @foo = Song.from_attributes("Foo Fighters", "Grohl", 230)
    songlist << @abba
    songlist << @foo
  end
  
  def teardown
    @collection = nil
  end
  
  def test_filter
    result = @collection.filter("abba")
    assert(true, result.songlist.include?(@abba))
    assert(1, result.songlist.size)
    
    result = @collection.filter("")
    assert(2, result.songlist.size)
  end
  
  def test_each_song
    count = 0
    @collection.each_song{ |i| count += 1 }
    assert(2, count)
  end
end