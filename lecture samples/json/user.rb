require "rubygems"
require "json"

class User
  def initialize(json_object)
    @attributes = json_object
  end
  
  def method_missing(method, *args)
    method_name = method.to_s
    return @attributes[method_name]
  end
end