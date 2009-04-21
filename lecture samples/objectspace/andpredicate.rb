require "predicate.rb"

class AndPredicate < Predicate
  def to_s
    "#predicate on #{@object}: " + @predicates.join(" and ")
  end
  
  def evaluate
    puts self
    @predicates.each_with_index do |p, i|
      unless @object.send(p) == @values[i]
        return false
      end
    end
    true
  end
end
