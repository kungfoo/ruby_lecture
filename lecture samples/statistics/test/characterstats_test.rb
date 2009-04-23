require "test/unit"

require "characterstats.rb"

class TestCharacterStats < Test::Unit::TestCase
  def test_counting_in_string
    string = "abbababa baaa acccaa ababa aaabbddd fgfaaa abdbdba dfg asdf"
    stats = CharacterStats.new.create_stats(string)
    
    
  end
end