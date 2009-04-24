class CharacterStats
  def initialize
    @stats = Hash.new(0) # map values start out with 0
  end
  
  def create_stats(stream)
    stream.each_line do |line|
      line.each_char { |c| @stats[c] += 1 }
    end
    self
  end
  
  def count(character)
    return @stats[character]
  end
  
  def to_s
    res = ""
    @stats.sort { |a,b| b[1] <=> a[1] }.each do |key, value|
      res << "'#{key}': #{value}\n"
    end
    return res
  end
end