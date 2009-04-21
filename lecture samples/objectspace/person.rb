class Person

  # TODO: include the object space finder module here.

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
  
  def method_missing(method, *args)
    puts "Method missing called"
  end
  
  def Person.method_missing(method, *args)
    if Person.finder_method?(method)
      # TODO: call finder module with method, class and arguments
    end
  end
  
  private
  def Person.finder_method?(method)
    method.to_s =~ /^find_by_/
  end
end
