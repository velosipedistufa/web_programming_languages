require_relative 'main'

puts 'Enter x'

numbre = gets.to_s
if numbre.empty?
	puts "invalid input"
else
	puts processing(numbre)
end