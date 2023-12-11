# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# class with test
class Testing < Minitest::Test
  def setup
    super
    @del = 0.001
    @fail = 'Error'
  end

  def test_1
    x_num = rand(-10..10)
    y_num = rand(-10..10)
    assert_in_delta((2 * Math.cos(x_num - Math::PI / 6.0)) / (1 / 2.0 + Math.sin(y_num)**2), maths(x_num, y_num),
                    @del, @fail + '2')
  end

  def test_2
    x_num = 1
    y_num = 1
    res = 1.471187100994271
    assert_in_delta(res, maths(x_num, y_num),
                    @del, @fail + ' 1')
  end
end
