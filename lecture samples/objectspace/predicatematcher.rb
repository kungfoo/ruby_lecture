require "simplepredicate.rb"
require "andpredicate.rb"
require "orpredicate.rb"

class PredicateMatcher
  def initialize(object, predicate_string, args = [])
    @predicate = nil
    predicates = []
    
    case predicate_string
    when /_and_/
      predicate_string.split(/_and_/).each do |p|
        predicates << p
      end
      @predicate = AndPredicate.new(object, predicates, args)
    when /_or_/
      predicate_string.split(/_or_/).each do |p|
        predicates << p
      end
      @predicate = OrPredicate.new(object, predicates, args)
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