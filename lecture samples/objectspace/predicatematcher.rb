require "simplepredicate.rb"
require "andpredicate.rb"
require "orpredicate.rb"

class PredicateMatcher
  def initialize(object, predicate_string, args = [])
    unless predicate_string =~ /_and_|_or_/
      @predicates = SimplePredicate.new(object, predicate_string)
      @predicates.value = args[0]
    else
      
    end
  end

  def matches?
    @predicates.evaluate
  end
end