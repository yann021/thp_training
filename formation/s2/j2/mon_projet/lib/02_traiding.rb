def day_trader (tab)
	isa=0 # jour d'achat
	isb=0 # jour de vente
	max=0 # gain maximum
	i=0
	while i < tab.length
		j=i+1
		while j < tab.length
			if tab[j] - tab[i] > max
				max = tab[j] - tab[i]
				isa = i
				isb = j
			end
			j+=1
		end
	  i+=1
	end
	return [isa, isb]
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
