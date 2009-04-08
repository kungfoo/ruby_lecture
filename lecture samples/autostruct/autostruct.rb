class AutoStruct

  def initialize(hash = nil)
    @properties = Hash.new
    if(hash)
      hash.each{ |key,value| @properties[key] = value }
    end
  end
  
  def method_missing(method, *args)
    puts "#{method} called, args: #{args}"
    
    if method =~ /=$/
      set_property(method, *args)
    else
      get_property(method)
    end
  end
  
  private
  def set_property(name, *args)
    name.gsub!(/=/, "")
    @properties[name] = args
  end
  
  def get_property(name)
    puts @properties
    @properties[name]
  end
end
