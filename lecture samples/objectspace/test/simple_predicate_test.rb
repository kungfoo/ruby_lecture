require "test/unit"

require "simplepredicate.rb"

class TestSimplePredicate < Test::Unit::TestCase
  def test_simple_predicate
    peter = Person.new "Peter", "Sommerlad"
    s = SimplePredicate.new(peter, :name)
    
    s.value = "Peter"
    assert_equal(true, s.evaluate)
    
    s.value = "Foo"
    assert_equal(false, s.evaluate)
  end
end