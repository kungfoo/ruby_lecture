require "objectfinder.rb"

class Person

  attr_reader :name, :lastname

  include Objectfinder
  include Comparable

  def initialize(name, lastname)
    @name, @lastname = name, lastname
  end

  def Person.method_missing(method, *args)
    if method.to_s =~ /^find_by_/
      Person.find(Person, method, args)
    end
  end

  def to_s
    "Person: #{name}, #{lastname}"
  end

  def <=>(other)
    name <=> other.name && lastname <=> other.lastname
  end
end
