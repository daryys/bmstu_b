# frozen_string_literal: true

require_relative 'class'

a = Int.new(13)
puts 'Вывод значения на экран:'
a.output
puts "Вывод значения: num = #{a.num}"
puts "Кол-во цифр: #{a.quantity}"
puts '------------------------------------'
b = IntFloat.new(55, 4.25)
puts 'Вывод значений на экран:'
b.output
puts "Вывод значения: num = #{b.num} fl_num = #{b.fl_num}"
puts "Кол-во цифр для поля целого числа: #{b.quantity[0]}\nдля поля вещественного числа: #{b.quantity[1]}"
