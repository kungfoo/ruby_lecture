module Objectfinder
  module ClassMethods
    def find(classname, method, *args)
      ObjectSpace.each_object(classname) do |object|
        puts object
      end
    end
  end
  
  module InstanceMethods
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end