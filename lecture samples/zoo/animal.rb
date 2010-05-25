class Animal
  attr_accessor :age, :name
  
  include Comparable
  
  def initialize(age, name)
    @age, @name = age, name
  end
  
  def <=>(other)
    if name == other.name
      age <=> other.age
    else
      name <=> other.name
    end
  end
end
