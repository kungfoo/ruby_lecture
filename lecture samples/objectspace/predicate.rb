class Predicate
  attr_accessor :lvalue, :rvalue
  
  def initialize(object, left, right)
    @object, @left, @right = object, left, right
    @lvalue = @rvalue = nil
  end
end