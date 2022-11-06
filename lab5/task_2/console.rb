# frozen_string_literal: true

require_relative 'main'

puts 'Enter x'

numbre = gets.split.map(&:to_i)
if numbre.empty?
  puts 'invalid input'
else
  processing(numbre).each { |arr| p arr }
end
