# frozen_string_literal: true

require './logic.rb'

puts "Введите n: "
n = gets.chomp.to_i

start(Array.new(10) { Random.rand(1..20) }, n)
puts 'Создан файл F'

sequences
puts 'Создан файл P'
