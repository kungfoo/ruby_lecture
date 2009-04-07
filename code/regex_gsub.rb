a = "the quick brown fox"
a.sub(/ui/){ |match| match.upcase } # => "the qUIck brown fox"
a.gsub(/\b\w/) { |first| first.upcase } # => "The Quick Brown Fox"
