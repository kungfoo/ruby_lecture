def function(item)
  sleep(rand(20)/20.0)
  puts item
end

threads = []
[1,2,3,4].each do |num|
  threads << Thread.new{ function(num) }
end

threads.each { |t| t.join }
puts "Done!"

# >> 2
# >> 4
# >> 3
# >> 1
# >> Done!
