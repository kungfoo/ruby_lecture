require "plant.rb"

class Tree < Plant
  @@number_of_trees = 1
  
  def initialize
    @number = @@number_of_trees
    @@number_of_trees += 1
  end
  
  def to_s
    "Tree, id : #{@number}"
  end
end
