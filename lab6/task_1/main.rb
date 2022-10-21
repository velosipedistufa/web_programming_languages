def processing(x)
	epsylon = 10**-3
	sinus = 0
	sinus_elem = sinus + 1
	iterador = 1
	n = 0
	while ((sinus - sinus_elem).abs>epsylon) do
		sinus_elem = sinus		
		sinus += ((-1)**n)*((x**iterador)/(Math.gamma(iterador+1)))
		n += 1
		iterador += 2
	end
	puts sinus
	return (n)		
end