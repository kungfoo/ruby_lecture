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
  
  def Person.find_by_lastname
  end
  
  def Person.find_by_nameAndLastname
  end
  
  def Person.find_by_nameOrLastName
  end
end