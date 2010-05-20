require "song"
require "jukeboxbutton"

class Jukebox
  attr_accessor :songs
  
  def initialize
    @songs = []
    
    @button_start = JukeboxButton.new("Start") { start }
    @button_stop = JukeboxButton.new("Stop") { stop }
    # buttons zum GUI hinzufügen...
  end
  
  # gleich wie vorher...
end
