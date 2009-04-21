require "test/unit"

require "orpredicate.rb"

class TestOrpredicate < Test::Unit::TestCase
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
end