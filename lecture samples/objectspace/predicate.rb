class Predicate
  attr_accessor :lvalue, :rvalue

  def initialize(object, left, right)
    @object, @left_predicate, @right_predicate = object, left, right
    @lvalue = @rvalue = nil
  end

  private
  def evaluate_left_and_right
    if @left_predicate.kind_of? String or @left_predicate.kind_of? Symbol
      left_eval = @object.send(@left_predicate) == @lvalue
    else
      left_eval = @left_predicate.evaluate
    end

    if @right_predicate.kind_of? String or @right_predicate.kind_of? Symbol
      right_eval = @object.send(@right_predicate) == @rvalue
    else
      right_eval = @right_predicate.evaluate
    end

    return [left_eval, right_eval]
  end
end