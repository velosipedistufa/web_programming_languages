def processing(row)
	arr = Array.new
	arr = row.scan(/0*1*2*3*4*5*6*7*8*9*/).map(&:to_s)
	arr.pop
	arr.pop
	arr = arr.sort_by { |str| -str[0] }
	arr = arr.reverse()
	puts arr
end