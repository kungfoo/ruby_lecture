require "test/unit"

require "user.rb"
require "fileutil.rb"

class TestUser < Test::Unit::TestCase
  include FileUtil
  
  def test_from_json
    json = get_file_as_string("test/user.json")
    json = JSON.parse(json)
    user = User.new(json)
    
    assert_equal(false, user.profile_background_tile)
    assert_equal(25643, user.followers_count)
    assert_equal("http://static.twitter.com/images/themes/theme4/bg.gif", user.profile_background_image_url)
    assert_equal("missrogue", user.screen_name)
  end
end