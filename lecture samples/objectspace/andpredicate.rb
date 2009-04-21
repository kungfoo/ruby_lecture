require "predicate.rb"

class AndPredicate < Predicate
  def to_s
    "#predicate on #{@object}: #{@left} and #{@right}"
  end
  
  def evaluate
    left_eval, right_eval = evaluate_left_and_right
    return left_eval && right_eval
  end
end
