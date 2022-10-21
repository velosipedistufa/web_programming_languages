require_relative 'main'

puts 'Enter x'

while true
	numbre = gets.chomp.to_s
	if numbre.empty?
		puts "invalid input"
		break
	else
		puts processing(numbre)
	end
end