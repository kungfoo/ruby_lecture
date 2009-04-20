require "test/unit"

require "animal.rb"

class TestAnimal < Test::Unit::TestCase
  def test_equality
    a = Animal.new 12, "a"
    b = Animal.new 10, "b"
    
    assert_equal(-1, a<=>b)
    
    a.name = "b"
    assert_equal(1, a<=>b)
    
    b.age = 12
    assert_equal(0, a<=>b)
    end
end