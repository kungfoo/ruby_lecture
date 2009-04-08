require 'test/unit'
require 'autostruct.rb'

class AutoStructTest < Test::Unit::TestCase
  def test_creation_with_hash
    struct = AutoStruct.new({"key" => "foo", "value" => "30"})
  end
  
  def test_creation_without_hash
    struct = AutoStruct.new
    assert_equal(nil, struct.foo)
    
    struct.foo = "foo is great"
    
    assert_equal("foo is great", struct.foo)  
  end
end