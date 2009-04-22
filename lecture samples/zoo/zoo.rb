require "bird.rb"
require "plant.rb"
require "felid.rb"
require "animal.rb"

class Zoo
  def initialize
    @objects = []
  end
  
  def <<(object)
    @objects << object
  end
  
  def animals
    objects_of_type(Animal)
  end
  
  def birds
    objects_of_type(Bird)
  end
  
  def felids
    objects_of_type(Felid)
  end
  
  def plants
    objects_of_type(Plant)
  end
  
  def number_of_objects
    @objects.size
  end
  
  private
  def objects_of_type(type)
    result = []
    @objects.each do |o|
      if o.kind_of? type
        result << o
      end
    end
    return result
  end
end