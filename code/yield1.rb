def threetimes
  yield
  yield
  yield
end

threetimes { puts "Hello yield!" }

array = []

threetimes { array << "meh."}
puts array.inspect
