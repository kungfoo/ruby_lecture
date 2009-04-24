a = 121

a.respond_to? :+ # => true
a.respond_to? :foo # => false

# Methoden von Fixnum, ohne die von Object
methods = a.methods - Object.new.methods

# ist Fixnum Comparable? (Achtung: Comparable ist ein Mixin...)
a.kind_of? Comparable # => true
