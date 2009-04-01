unless user.logged_in? then
  show_login_screen
end

if user.underage then
  print "underage login by #{user}"
end

print "logged in!" if user.logged_in?