require "test/unit"

require "person.rb"

class TestPerson < Test::Unit::TestCase
  def test_find_by_name
    a = Person.new 1,2
    found = Person.find_by_name(1)
    
    assert_not_nil(found)
    assert_equal(a, found)
  end
  
  def test_find_by_lastname
    a = Person.new 1,2
    found = Person.find_by_lastname(2)
    
    assert_not_nil(found)
    assert_equal(a, found)
  end
end