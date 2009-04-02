class StartButton < Button
  def initialize(jukebox)
    super("Start")
    @jukebox = jukebox
  end
  
  def button_pressed
    @jukebox.start
  end
end