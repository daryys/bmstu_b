# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'main'

# class with test
class Testing < Minitest::Test
  CHARS = ('а'..'я').to_a

  def test_1
    10.times do
      str = gen_str
      assert_equal str[1], output(str[0])
    end
  end

  def gen_word(len_word)
    (CHARS.sample len_word).join ''
  end

  def gen_str
    max_size = rand(7..10)
    min_size = rand(2..6)
    max_word = gen_word max_size
    min_word = gen_word min_size
    str_length = rand(3..10)
    bool1 = false
    bool2 = false
    arr_input = []
    arr_result = []
    str_length.times do |i|
      if i == rand(i...str_length - 1) && !bool2
        arr_input << [min_word]
        arr_result << [max_word]
        bool2 = true
      elsif i == rand(i...str_length) && !bool1
        arr_input << [max_word]
        arr_result << [min_word]
        bool1 = true
      else
        word = gen_word rand((min_size + 1)...max_size)
        arr_input << word
        arr_result << word
      end
    end
    [arr_input.join(' '), arr_result.join(' ')]
  end
end
