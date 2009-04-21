module Objectfinder
  module ClassMethods
    
    def find(classname, method, *args)
      ObjectSpace.each_object(classname) do |object|
        if object.matches_predicate_method?(method, args)
          return object
        end
      end
      return nil
    end
     
  end
  
  module InstanceMethods
    def matches_predicate_method?(method, *args)
      puts "matcher method called"
      false
    end
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end