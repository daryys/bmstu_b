# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'logic'

# class with test
class TestMath < Minitest::Test
  DEL = 1e-2
  def test_first
    assert_in_delta(1.1201, intg(3, 1, 0.1) { |x| Math.sin(x) / x }, DEL)
  end

  def test_second
    assert_in_delta(-0.593827, intg(3, 2, 1) { |x| Math.tan(x + 1) / (x + 1) }, DEL)
  end
end
