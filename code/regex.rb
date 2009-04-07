r = /\w+/
q = %r{\w+}

r.class # => Regexp
q.class # => Regexp

r == q # => true
