
	tab = []

	i=-1
	50.times do
		i+=1
		j=(100+i+1).to_s[1,2]
		tab[i]="jean.dupont."+j+"@email.com"
	end

	i=-1
	50.times do
		i+=1
		no = tab[i][12,2].to_i
		if (no % 2) == 0
			puts tab[i]
		end
	end

