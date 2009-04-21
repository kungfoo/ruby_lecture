require "predicatematcher.rb"

module Objectfinder
  module ClassMethods
    
    def find(classname, method, args = [])
      predicates = method.to_s.gsub("find_by_", "")
      
      ObjectSpace.each_object(classname) do |object|
        m = PredicateMatcher.new(object, predicates, args)
        return object if m.matches?
      end
      
      return nil
    end
    
  end
  
  def self.included(receiver)
    @mixed_class = receiver
    receiver.extend ClassMethods
  end
end