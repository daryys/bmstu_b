# frozen_string_literal: true

require 'minitest/autorun'
require './logic.rb'

class Test < MiniTest::Test

  def test_first
    start(Array.new(10) { 1 }, 10)
    file_f = File.new('F.txt', 'r')
    arr = file_f.gets.split.map(&:to_i)
    [0, 20, 40, 60].each { |ind|
      assert_equal(Array.new(10) { 1 }, arr[ind..ind + 9])
      assert_equal(Array.new(10) { -1 }, arr[ind + 10..ind + 19])
    }
    file_f.close
  end

  def test_second
    start(Array.new(10) { 1 }, 10)
    sequences
    seq = Array.new(5) { 1 } + Array.new(5) { -1 }
    file_p = File.new('P.txt', 'r')
    arr = file_p.gets.split.map(&:to_i)
    (0..7).each { |ind| assert_equal(seq, arr[ind * 10..ind * 10 + 9]) }
    file_p.close
  end

end
