require "predicate.rb"

class AndPredicate < Predicate
  def evaluate
    @predicates.each_with_index do |p, i|
      unless @object.send(p) == @values[i]
        return false
      end
    end
    true
  end
end
