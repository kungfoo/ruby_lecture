class Address
  attr_accessor :street, :city, :zip
  
  def initialize(street, zip, city)
    @street, @zip, @city = street, zip, city
  end
  
  def save
    
  end
  
  def delete
    
  end
  
  def Address.find_all
    
  end
  
  def Address.find(&condition)
    
  end 
end