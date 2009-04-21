require "objectfinder.rb"

class Person

  attr_reader :name, :lastname

  # TODO: include the object space finder module here.
  include Objectfinder

  def initialize(name, lastname)
    @name, @lastname = name, lastname
  end
  
  def Person.find_by_name(name)
    found = nil
    ObjectSpace.each_object(Person) do |p|
      found = p if p.name == name
    end
    return found
  end
  
  def method_missing(method, *args)
    puts "missing method #{method} called"
  end
  
  def Person.method_missing(method, *args)
    if method.to_s =~ /^find_by_/
      Person.find(Person, method, args)
    end
  end
  
  def to_s
    "Person: #{name}, #{lastname}"
  end
end
