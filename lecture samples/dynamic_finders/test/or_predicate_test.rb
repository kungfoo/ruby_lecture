require "test/unit"

require "orpredicate"
require "person.rb"

class TestOrpredicate < Test::Unit::TestCase
  def test_single_or_predicate
    gino = Person.new("Gino", "Paulaitis")

    o = OrPredicate.new(gino,[:name, :lastname], ["Gino", "Paulaitis"])
    assert_equal(true, o.evaluate)

    o = OrPredicate.new(gino,[:name, :lastname], ["Gino", "Foo"])
    assert_equal(true, o.evaluate)

    o = OrPredicate.new(gino,[:name, :lastname], ["Bar", "Paulaitis"])
    assert_equal(true, o.evaluate)

    o = OrPredicate.new(gino,[:name, :lastname], ["Bar", "Foo"])
    assert_equal(false, o.evaluate)
  end
end
