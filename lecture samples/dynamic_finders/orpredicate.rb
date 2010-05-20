require "predicate.rb"

class OrPredicate < Predicate
  def evaluate
    @predicate.each_with_index do |p,i|
      if @object.send(p) == @values[i]
        return true
      end
    end
    false
  end
end
