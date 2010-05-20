require "predicate.rb"

class SimplePredicate < Predicate
  def initialize(object, predicate, value = nil)
    super(object, predicate, value)
  end
  
  def evaluate
    if @object.respond_to? @predicate
      @object.send(@predicate) == @values
    else
      nil
    end
  end
end
