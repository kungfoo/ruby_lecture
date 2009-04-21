require "test/unit"

require "simplepredicate.rb"

class TestSimplePredicate < Test::Unit::TestCase
  def test_simple_predicate
    peter = Person.new "Peter", "Sommerlad"
    s = SimplePredicate.new(peter, :name, "Peter")
    assert_equal(true, s.evaluate)
    
    s = SimplePredicate.new(peter, :name, "Foo")
    assert_equal(false, s.evaluate)
    
    s = SimplePredicate.new(peter, :name)
    assert_equal(false, s.evaluate)
  end
end