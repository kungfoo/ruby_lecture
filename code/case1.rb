case inputLine
  when "debug"
    dumpDebugInfo
    dumpSymbols
  
  when /p\s+(\w+)/
    dumpVariable($1)
  
  when "quit", "exit"
    exit
  
  else
    print "Illegal command: #{inputLine}"
end