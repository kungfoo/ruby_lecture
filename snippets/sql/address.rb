class Address
  attr_accessor :street, :city, :zip
  
  def initialize(street, zip, city)
    @street, @zip, @city = street, zip, city
  end
  
  
end


