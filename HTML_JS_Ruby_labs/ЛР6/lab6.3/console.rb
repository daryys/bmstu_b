# frozen_string_literal: true

require_relative 'logic'

puts 'Choose a function:'
puts '1) sin(x) / x'
puts '2) tg(x + 1) / (x + 1)'
code = gets.to_i

puts 'Input step'
steps = gets.to_i
func = ->(x) { Math.sin(x) / x }
case code
when 1
  puts intg(steps, 1, 0.1, func)
when 2
  puts intg(steps, 2, 1) { |x| Math.tan(x + 1) / (x + 1) }
else puts 'error'
end
