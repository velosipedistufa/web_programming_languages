require_relative 'main.rb'

expression_to_be_given = ->(x) { (x - 1) / (x + 2) }

puts Sucher.minmax(-1, 1) { |x| Math.sin(x / 2 - 1) }
puts "next"
puts Sucher.minmax(0, 2, &expression_to_be_given)