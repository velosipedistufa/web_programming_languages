
def processing(row)
	arr = row.delete(' ').split('')
	arr.uniq.
		map { | e | [arr.count(e), e] }.
		select { | c, _ | c > 0 }.
		sort.reverse.
		map { | c, e | "#{e}:#{c}" }
end

def arr_bearbeiter(arr)
	arr = arr.sort_by { |str| -str.length() }
	arr = arr.reverse()
	arr.each do |x|
		puts x
		puts processing(x)
	end
end
