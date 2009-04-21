require "simplepredicate.rb"
require "andpredicate.rb"
require "orpredicate.rb"

class PredicateMatcher
  def initialize(object, predicate_string, args = [])
    @predicate = nil
    
    case predicate_string
    when /_and_/
      predicate_string.split(/_and_/).each do |p|
        #TODO: build new AndPredicate
      end
    when /_or_/
      
    else
      @predicate = SimplePredicate.new(object, predicate_string, args[0])
    end
  end

  def matches?
    if @predicate
      @predicate.evaluate
    else
      false
    end
  end
end