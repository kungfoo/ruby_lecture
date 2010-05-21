require "rubygems"
require "json"

class User
  def initialize(json_object)
    @attributes = json_object
  end
  
  def method_missing(method, *args)
    method_name = method.to_s
    if @attributes.has_key? method_name
      @attributes[method_name]
    else
      super.method_missing method, args
    end
  end
end
