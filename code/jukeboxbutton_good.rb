require "button"

class JukeboxButton < Button
  def initialize(label, &action)
    super(label)
    @action = action
  end
  
  def button_pressed
    @action.call(self)
  end
end
