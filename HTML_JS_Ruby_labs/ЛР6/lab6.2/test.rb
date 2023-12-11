# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'logic'

# class for test
class MyTest < Minitest::Test
  def test_first
    result = answer(1e-3)
    assert_in_delta(0.9696969696969695, result[0], 1e-3)
  end

  def test_second
    result = answer(1e-4)
    assert_in_delta(0.9900990099009898, result[0], 1e-4)
  end
end
