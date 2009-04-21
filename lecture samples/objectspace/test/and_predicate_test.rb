require "test/unit"

require "andpredicate.rb"
require "orpredicate.rb"
require "person.rb"
require "ostruct"

class TestPredicates < Test::Unit::TestCase
  def test_single_and_predicate
    peter = Person.new("Peter", "Sommerlad")

    a = AndPredicate.new(peter, [:name, :lastname], ["Peter", "Sommerlad"])

    assert_equal(true, a.evaluate)

    a = AndPredicate.new(peter, [:name, :lastname], ["Foo", "Sommerlad"])
    assert_equal(false, a.evaluate)

    a = AndPredicate.new(peter, [:name, :lastname], ["Peter", "Bar"])
    assert_equal(false, a.evaluate)
  end
end