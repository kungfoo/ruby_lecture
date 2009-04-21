class PredicateMatcher
  def initialize(predicate_string)
    unless predicate_string =~ /_and_/ or predicate_string =~ /_or_/
      puts "simple predicate given"
    else

    end
  end

  def matches?(object, *values)

  end
end