hello = "hello"
new_hello = hello.gsub("h", "H")

puts hello      # => hello
puts new_hello  # => Hello

hello.gsub!("lo", "as")
puts hello      # => helas
