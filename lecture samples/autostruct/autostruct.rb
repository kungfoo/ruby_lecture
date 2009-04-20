class AutoStruct

  def initialize(hash = nil)
    @properties = Hash.new
    if(hash)
      hash.each do |key,value|
        @properties[key.to_s] = value
      end
    end
  end
  
  def method_missing(method, *args)
    name = method.to_s
    
    if name =~ /=$/
      set_property(name, *args)
    else
      get_property(name)
    end
  end
  
  private
  def set_property(name, *args)
    name.gsub!("=", "")
    @properties[name] = args[0]
  end
  
  def get_property(name)
    @properties[name]
  end
end
