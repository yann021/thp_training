def day_trader (tab)
	i=0
	min=tab[i]
	isa=i
#	balayage -> min ET indice
	while i < tab.length
	  if tab[i] < min
	  	min = tab[i]
		isa = i
	  end
	  i+=1
	end
	i=isa
	max=tab[i]
	isb=i
#	balayage -> max ET indice
	while i < tab.length
	  if tab[i] > max
	  	max = tab[i]
		isb = i
	  end
	  i+=1
	end
	return [isa, isb]
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
