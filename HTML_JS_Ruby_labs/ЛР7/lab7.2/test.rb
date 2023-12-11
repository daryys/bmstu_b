# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'class'

# class for test
class MyTest < Minitest::Test
  # testing
  def setup
    @a_num = Int.new(5)
    @b_num = IntFloat.new(72, 1.05)
  end

  def test_first
    assert_instance_of(Int, @a_num)
    assert_instance_of(IntFloat, @b_num)
    assert_equal(@a_num.num, 5)
    assert_equal(@b_num.num, 72)
    assert_equal(@b_num.fl_num, 1.05, 0.01)
    assert_equal(@a_num.quantity, 1)
    assert_equal(@b_num.quantity, [2, 3])
    assert_kind_of(Int, @b_num)
  end
end
