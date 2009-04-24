require "test/unit"

class TestExample < Test::Unit::TestCase
  def setup
    @foo = 1.21
  end

  def test_something
    assert_equal(true, true)
  end

  def test_math
    assert_equal(2, 1+1)
    assert_nil(nil)
    assert_not_equal(true, false)
  end

  def test_float
    assert_in_delta(@foo, (1+0.21001), 2 ** -20)
  end
end
# >> Loaded suite -
# >> Started
# >> F..
# >> Finished in 0.006603 seconds.
# >> 
# >>   1) Failure:
# >> test_float(TestExample) [-:19]:
# >> <1.21> and
# >> <1.21001> expected to be within
# >> <9.5367431640625e-07> of each other.
# >> 
# >> 3 tests, 5 assertions, 1 failures, 0 errors
