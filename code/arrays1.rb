numbers = [0,1,2,3,4,5,6,7,8,9]
puts numbers[3]
puts numbers[-1]
puts numbers[-2]
puts

class Duck
  @@number_of_ducks = 0

  def initialize()
    @id = @@number_of_ducks += 1
  end

  def to_s
    "Duck, id: #{@id}"
  end
end

array = [2, 3, "Harmless String", Duck.new, Duck.new, Duck.new]
array.each { |item| puts item }

# >> 3
# >> 9
# >> 8
# >> 
# >> 2
# >> 3
# >> Harmless String
# >> Duck, id: 1
# >> Duck, id: 2
# >> Duck, id: 3
