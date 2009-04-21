require "predicate.rb"

class OrPredicate < Predicate
  def to_s
    "#{@left} or #{@right}"
  end

  def evaluate
    left_eval, right_eval = evaluate_left_and_right
    return left_eval || right_eval
  end
end