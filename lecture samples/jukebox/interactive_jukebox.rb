require "jukebox.rb"
require "readline"
require "cdplayer.rb"


player = CdPlayer.new
jukebox = Jukebox.new(player)
jukebox_methods = (jukebox.methods - Object.new.methods).sort

loop do
  cmd = Readline.readline("jukebox >> ", true)
  
  case cmd
  when /^(q|exit|quit)$/i
    exit!
    
  when /^(help|\?)$/
    puts "Jukebox Commands:"
    jukebox_methods.each do |method|
      param_count = jukebox.method(method).arity
      params = ''
      if param_count > 0
        params = '(' << ('a'..'z').to_a[0,param_count].join(', ') << ')'
      end
      
      puts("  #{method}#{params}")
    end
  
  else
    begin
      response = jukebox.instance_eval(cmd)
      puts "=>  #{response.inspect}"
    rescue Exception => ex
      puts("=> Error: #{ex.class}: #{ex.to_s}")
    end
  end
end