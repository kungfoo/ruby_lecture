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
    
  end
  
  def test_non_empty_zoo
    
  end
end