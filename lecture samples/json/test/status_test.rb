require "test/unit"

require "status.rb"
require "fileutil.rb"

class TestStatus < Test::Unit::TestCase
  include FileUtil
  
  def test_creation_from_json
    json = get_file_as_string("test/status.json")
    status = Status.new(json)
    
    assert_equal("missrogue", status.user.screen_name)
    assert_equal(false, status.user.protected)
    
    assert_equal(false, status.truncated)
    assert_equal(1563595749, status.id)
  end
end