# frozen_string_literal: true

def output(str)
  arr = str.split
  minmax = arr.each_with_index.minmax_by { |word, _index| word.length }
  arr[minmax[0][1]] = minmax[1][0]
  arr[minmax[1][1]] = minmax[0][0]
  arr.join ' '
end
