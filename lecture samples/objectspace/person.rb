class Person
  def initialize(name, lastname)
    @name, @lastname = name, lastname
  end
  
  def Person.find_by_name(name)
    found = nil
    ObjectSpace.each_object(Person) do |p|
      found = p if p.name = name
    end
    return found
  end
  
  def Person.find_by_lastname(a)
  end
  
  def Person.find_by_name_and_lastname(a,b)
  end
  
  def Person.find_by_name_or_lastname(a,b)
  end
end
