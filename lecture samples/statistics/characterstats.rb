class CharacterStats
  def initialize
    @stats = Hash.new(0) # map values start out with 0
  end
  
  def create_stats(stream)
    stream.each_line do |line|
      line.each_char { |c| @stats[c] += 1 }
    end
    puts @stats.inspect
  end
  
  def count(character)
    
  end
  
  def to_s
    
  end
end