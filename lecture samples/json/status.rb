require "rubygems"
require "json"

class Status
  attr_accessor :user
  
  def initialize(json)
    if(json.kind_of? String)
      json = JSON.parse(json)
    end
    @user = User.new(json["user"])
    json.delete("user")
    @attributes = json
  end
  
  def id
    return @attributes["id"]
  end
  
  def method_missing(name)
    method = name.to_s
    return @attributes[method]
  end
end