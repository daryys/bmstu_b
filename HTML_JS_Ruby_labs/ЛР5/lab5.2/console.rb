# frozen_string_literal: true

require_relative 'main'
ARGF.each do |line|
  puts output(line.chomp)
end
