class AutoStruct
  def initialize(hash = nil)
    if(hash)
      
    end
  end
  
  def method_missing(method, *args)
    puts "#{method} called, args: #{args}"
    nil
  end
end
