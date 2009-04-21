require "test/unit"

require "andpredicate.rb"
require "orpredicate.rb"
require "person.rb"
require "ostruct"

class TestPredicates < Test::Unit::TestCase
  
  def test_single_and_predicate
    peter = Person.new("Peter", "Sommerlad")
    
    a = AndPredicate.new(peter, :name, :lastname)
    a.lvalue = "Peter"
    a.rvalue = "Sommerlad"
    
    assert_equal(true, a.evaluate)
    
    a.lvalue = "Foo"
    assert_equal(false, a.evaluate)
    
    a.lvalue = "Peter"
    a.rvalue = "Foo"
    assert_equal(false, a.evaluate)
    
    a.lvalue = "Bar"
    assert_equal(false, a.evaluate)
  end
  
  def test_single_or_predicate
    gino = Person.new("Gino", "Paulaitis")
    
    o = OrPredicate.new(gino,:name, :lastname)
    
    o.lvalue = "Gino"
    assert_equal(true, o.evaluate)
    
    o.lvalue = "Foo"
    assert_equal(false, o.evaluate)
    
    o.rvalue = "Paulaitis"
    assert_equal(true, o.evaluate)
    
    o.lvalue = "Gino"
    assert_equal(true, o.evaluate)
  end
  
  def test_empty_or_predicate
    gino = Person.new("Gino", "Paulaitis")
    o = OrPredicate.new(gino, :name, :lastname)
    assert_equal(false, o.evaluate)
  end
  
  def test_and_or_predicate
    # set up mutlivitamin guice...
    multi = OpenStruct.new()
    multi.guices = [:orange, :carrot, :strawberry, :peach]
    multi.amount = 0.33
    multi.price = 2.50
    multi.energy = 250
    
    a = AndPredicate.new(multi, :amount, :price)
    a.lvalue = 0.33
    a.rvalue = 2.50
    assert_equal(true, a.evaluate)
    a.lvalue = 0.32
    assert_equal(false, a.evaluate)
    
    a = AndPredicate.new(multi, :guices, :energy)
  end
end