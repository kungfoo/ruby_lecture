require "test/unit"

Dir["*.rb"].each { |file| require file }

class TestZoo < Test::Unit::TestCase
  def test_empty_zoo
    zoo = Zoo.new
    assert_equal(0, zoo.plants.size)
    assert_equal(0, zoo.felids.size)
    assert_equal(0, zoo.birds.size)

    assert_equal(0, zoo.number_of_objects)
  end

  def test_cats_and_trees
    zoo = Zoo.new
    5.times do
      zoo << Tree.new
    end

    assert_equal(5, zoo.number_of_objects)
    assert_equal(5, zoo.plants.size)

    lion = Lion.new(10, "Leo")
    tiger = Tiger.new(4, "Tigra")
    zoo << lion
    zoo << tiger

    assert_equal(2, zoo.felids.size)
    assert_equal(0, zoo.birds.size)
  end

  def test_non_empty_zoo
    zoo = Zoo.new
    13.times do
      zoo << Tree.new
    end

    assert_equal(13, zoo.number_of_objects)
    assert_equal(0, zoo.animals.size)

    lion = Lion.new(10, "Leo")
    tiger = Tiger.new(4, "Tigra")
    duckie = Duck.new(2, "Duckie")
    zoo << lion
    zoo << tiger
    zoo << duckie
    
    assert_equal(1, zoo.birds.size)
    assert_equal(3, zoo.animals.size)
    assert_equal(2, zoo.felids.size)
  end
end