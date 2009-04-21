require "predicatematcher.rb"

module Objectfinder
  module ClassMethods
    
    def find(classname, method, *args)
      predicates = method.to_s.gsub("find_by_", "")
      m = PredicateMatcher.new(predicates)
      
      ObjectSpace.each_object(classname) do |object|
        return object if m.matches?(object, args)
      end
      
      return nil
    end
    
  end
  
  def self.included(receiver)
    receiver.extend ClassMethods
  end
end