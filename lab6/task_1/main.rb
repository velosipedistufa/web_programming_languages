def processing(epsylon)
	x = 3
#	epsylon = 10**-3
	puts(epsylon)
	sinus = 0
	sinus_elem = sinus + 1
	n = 0
	while ((sinus - sinus_elem).abs>epsylon) do
		sinus_elem = sinus		
		sinus += ((-1)**n)*((x**(2*n+1))/(Math.gamma((2*n+1)+1)))
		n += 1
	end
	puts sinus
	return (n)
end