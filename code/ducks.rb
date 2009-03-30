class Bird
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

class Duck < Bird
  def quack()
    puts self.name + ": quack!"
  end
end

birds = [Bird.new("Gustav"), Duck.new("Donald")]

birds.each do |bird|
  if(bird.respond_to? :quack)
    bird.quack
  else
    puts bird.name << " is not a duck!"
  end
end