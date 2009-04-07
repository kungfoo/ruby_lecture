require "display_regmatch.rb"

display_regmatch(/^abba/, "abbaaaa")
display_regmatch(/^abba$/, "abbaaaa")
display_regmatch(/aa$/, "abba")
display_regmatch(/aa$/, "aaaaaa")

# >> >>abba<<aaa
# >> no match!
# >> no match!
# >> aaaa>>aa<<
