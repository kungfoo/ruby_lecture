double = "Brief message to the user \nOn a new line!"
single = 'Single quotes too.\n Beware of the effect, though...'
general = %(This is a "special" string. 'Lots' of quotes.)

puts double
puts single
puts general

price = 7.23
price_tag = "This article costs: #{price} CHF"

puts price_tag

# >> Brief message to the user 
# >> On a new line!
# >> Single quotes too.\n Beware of the effect, though...
# >> This is a "special" string. 'Lots' of quotes.
# >> This article costs: 7.23 CHF
