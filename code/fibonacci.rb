def fibUpTo(max)
  a, b = 1, 1
  while a <= max
    yield a
    a, b = b, a+b
  end
end

fibUpTo(1000) { |f| print f, " "}

# >> 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 
