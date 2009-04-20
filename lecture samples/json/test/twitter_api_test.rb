require "test/unit"

require "twitter_api.rb"

class TestTwitterApi < Test::Unit::TestCase
  def test_missrogue_time_line
    user = "missrogue"
    api = TwitterApi.new
    timeline = api.timeline(user)
    
    assert_equal(20, timeline.length)
    assert_equal("missrogue", timeline[0].user.screen_name)
    
    timeline.each do |status|
      puts "#{status.user.screen_name} said"
      puts "#" * 50
      puts status.text
      puts
    end
    end
end