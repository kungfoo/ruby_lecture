require "test/unit"
require "song.rb"

class TestSong < Test::Unit::TestCase
  def test_from_attributes
    song = Song.from_attributes("a", "b", 20)
    assert_equal(20, song.seconds)
    assert_equal("a", song.artist)
    assert_equal("b", song.title)
  end
  
  def test_seconds
    song = Song.from_attributes("a", "b", 120)
    assert_equal(0, song.seconds)
    
    song.length = 61
    assert_equal(1, song.seconds)
  end
  
  def test_minutes
    song = Song.from_attributes("a", "b", 66)
    assert_equal(1, song.minutes)
    
    song.length = 121
    assert_equal(2, song.minutes)
    
    song.length = 60
    assert_equal(1, song.minutes)
    
    song.length = 59
    assert_equal(0, song.minutes)
  end
end
