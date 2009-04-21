require "test/unit"

require "person.rb"

class TestPerson < Test::Unit::TestCase
  def setup
    @person = Person.new 1,2
    @other_guy = Person.new "Guy", "Other"
    @different_other_guy = Person.new "other guy", Object.new
    @yet_another_guy = "not me", "Foo"
  end

  def test_find_by_name
    found = Person.find_by_name(1)
    assert_not_nil(found)
    assert_equal(@person, found)

    found = Person.find_by_name("Guy")
    assert_equal(@other_guy, found)
  end

  def test_find_by_lastname
    found = Person.find_by_lastname(2)
    assert_not_nil(found)
    assert_equal(@person, found)
  end

  def test_find_by_name_and_lastname
    found = Person.find_by_name_and_lastname(3,3)
    assert_nil(found)

    found = Person.find_by_name_and_lastname(1,2)
    assert_not_nil(found)
    assert_equal(@person, found)
  end

  def test_equal
    p1 = Person.new "Peter", "Sommerlad"
    p2 = Person.new "Gino", "Paulaitis"
    p3 = Person.new "Peter", "Sommerlad"

    assert_equal(false, p1 == p2)
    assert_equal(true, p1 == p1)
    assert_equal(true, p2 == p2)
    assert_equal(true, p1 == p3)
  end
end