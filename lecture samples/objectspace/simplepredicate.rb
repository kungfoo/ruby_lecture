require "predicate.rb"

class SimplePredicate < Predicate
  def initialize(object, predicate)
    super(object, predicate, nil)
  end
  
  def value
    @lvalue
  end

  def value=(value)
    @lvalue = value
  end
  
  def evaluate
    @object.send(@left_predicate) == @lvalue
  end
end