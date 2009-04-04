def convert(line)
  value = 0
  line.each_byte do |c|
    value += case c
    when 46 : 1
    when 45 : 5
    else 0
    end
  end
  return value
end

convert("...----") # => 23
