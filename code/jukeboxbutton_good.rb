require "button.rb"

class JukeboxButton < Button
  def initialize(label, &action)
    super(label)
    @action = action
  end
  
  def button_pressed
    @action.call(self)
  end
end

button_start = JukeboxButton.new("Start") { start }
button_stop = JukeboxButton.new("Stop") { stop }