def display_regmatch(r, str)
  if r =~ str
    match = Regexp.last_match
    puts "#{match.pre_match}|#{match}|#{match.post_match}"
  else
    puts "no match!"
  end
end

display_regmatch(/ab/, "abba")
display_regmatch(/bb/, "aaabbabba")
display_regmatch(/b+/, "abbbbbbba")

# >> |ab|ba
# >> aaa|bb|abba
# >> a|bbbbbbb|a
