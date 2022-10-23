def processing(row)
	arr = row.delete(' ').split('')
	puts arr.uniq.
		map { | e | [arr.count(e), e] }.
		select { | c, _ | c > 0 }.
		sort.reverse.
		map { | c, e | "#{e}:#{c}" }
end