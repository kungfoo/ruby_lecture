require "test/unit"

require "person.rb"

class TestPerson < Test::Unit::TestCase
  def setup
    @peter = Person.new("Peter","Sommerlad")
    @other_guy = Person.new("Guy", "Other")
    @different_other_guy = Person.new("other guy", Object.new)
    @yet_another_guy = Person.new("not me", "Foo")
  end

  def test_find_by_name
    found = Person.find_by_name("Peter")
    assert_not_nil(found)
    assert_equal(@peter, found)

    found = Person.find_by_name("Guy")
    assert_equal(@other_guy, found)
  end

  def test_find_by_lastname
    found = Person.find_by_lastname("Sommerlad")
    assert_not_nil(found)
    assert_equal(@peter, found)
  end

  def test_find_by_name_and_lastname
    found = Person.find_by_name_and_lastname(3,3)
    assert_nil(found)

    found = Person.find_by_name_and_lastname("Peter","Sommerlad")
    assert_not_nil(found)
    assert_equal(@peter, found)
  end

  def test_find_by_name_or_lastname
    found = Person.find_by_name_or_lastname("Peter","Sommerlad")
    assert_not_nil(found)
    assert_equal(@peter, found)

    found = Person.find_by_name_or_lastname("Peter","not here right now")
    assert_not_nil(found)
    assert_equal(@peter, found)

    found = Person.find_by_name_or_lastname("asdf","Sommerlad")
    assert_not_nil(found)
    assert_equal(@peter, found)

    found = Person.find_by_name_or_lastname(10,20)
    assert_nil(found)
  end
  
  def test_find_non_existent_field
    found = Person.find_by_zap "Foo"
    assert_nil found
  end
  
  def test_use_non_existent_method
    assert_raise NoMethodError do
      Person.foo # this method should not be eaten by the dynamic finder!
    end
  end
  

  def test_equal
    p1 = Person.new("Peter", "Sommerlad")
    p2 = Person.new("Gino", "Paulaitis")
    p3 = Person.new("Peter", "Sommerlad")

    assert_equal(false, p1 == p2)
    assert_equal(true, p1 == p1)
    assert_equal(true, p2 == p2)
    assert_equal(true, p1 == p3)
  end
end
