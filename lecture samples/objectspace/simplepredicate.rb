require "predicate.rb"

class SimplePredicate < Predicate
  def initialize(object, predicate, value = nil)
    super(object, predicate, value)
  end
  
  def evaluate
    return @object.send(@predicates) == @values
  end
end