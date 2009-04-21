require "predicate.rb"

class OrPredicate < Predicate
  def to_s
    "#{@left} or #{@right}"
  end
  
  def evaluate
    if @left.kind_of? String
      left_eval = @object.send(@left) == @lvalue
    else
      left_eval = @left.evaluate
    end
    
    if @right.kind_of? String
      right_eval = @object.send(@right) == @rvalue
    else
      right_eval = @right.evaluate
    end
    
    return left_eval || right_eval
  end
end