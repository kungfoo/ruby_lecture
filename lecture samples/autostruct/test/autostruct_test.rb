require 'test/unit'
require 'autostruct.rb'

class AutoStructTest < Test::Unit::TestCase
  def test_creation_with_hash
    struct = AutoStruct.new({"key" => "foo", "value" => 30})
    assert_equal("foo", struct.key)
    assert_equal(30, struct.value)
    
    struct.foo = 10
    o = Object.new
    struct.bar = o
    puts struct.inspect
    assert_equal(10, struct.foo)
    assert_equal(o, struct.bar)     
  end
  
  def test_creation_without_hash
    struct = AutoStruct.new
    assert_equal(nil, struct.foo)
    
    struct.foo = "foo is great"
    assert_equal("foo is great", struct.foo)
    
    struct.foo = 2
    assert_equal(2, struct.foo)
    
    struct.bar = [1,2,3]
    assert_equal([1,2,3], struct.bar)      
  end
  
  def test_creation_with_symbol_hash
    o = Object.new
    hash = { :key => 20, :value => "foo", :bar => o }
    struct = AutoStruct.new(hash)
    
    assert_equal(20, struct.key)
    assert_equal("foo", struct.value) 
    assert_equal(o, struct.bar)
  end
end
