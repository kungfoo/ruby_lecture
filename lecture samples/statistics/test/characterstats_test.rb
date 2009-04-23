require "test/unit"

require "characterstats.rb"

class TestCharacterStats < Test::Unit::TestCase
  def test_counting_in_string
    string = "abbababa baaa acccaa ababa aaabbddd fgfaaa abdbdba dfg asdf"
    stats = CharacterStats.new.create_stats(string)
    
    assert_equal(22, stats.count('a'))
    assert_equal(1, stats.count('s'))
    assert_equal(8, stats.count(' '))
    assert_equal(0, stats.count('z'))
  end
  
  def test_counting_in_file
    f = File.open("test/text.txt", "r")
    stats = CharacterStats.new.create_stats(f)
    
    assert_equal(333, stats.count('e'))
    assert_equal(116, stats.count('o'))
    assert_equal(0, stats.count('z'))
    assert_equal(7, stats.count('I'))
  end
  
  def test_to_s
    result =
"' ': 10
'e': 5
'o': 3
"
    
    string = "         eeeee ooo"
    stats = CharacterStats.new.create_stats(string)
    assert_equal(result, stats.to_s)
  end
end