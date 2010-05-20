a = "foo"
b = 3
c = 7.721e-2

a.class # => String
a.kind_of? String # => true

b.kind_of? Integer # => true
# Integer ist die Basis für Fixnum und Bignum
b.instance_of? Integer # => false
b.instance_of? Fixnum # => true

c.kind_of? Float # => true

[].kind_of? Enumerable # => true
