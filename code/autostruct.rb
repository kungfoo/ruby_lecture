foo = AutoStruct.new

foo.a
assert_equal(nil, foo.a)
foo.a = [1,2,3,4]
assert_equal([1,2,3,4], foo.a)

foo.bar = 123
assert_equal(123, foo.bar)

foo.duck = Duck.new
assert(foo.duck.kind_of? Duck, "Duck is not a duck")