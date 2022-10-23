require_relative 'main'

puts 'Enter x'
arr = Array.new
while true
	numbre = gets.chomp.to_s
	if numbre.empty?
		puts "invalid input"
		(arr_bearbeiter(arr))
		break
	else
		arr << numbre
	end
end