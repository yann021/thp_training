	
	
	print "nombre ?\n> "
	nbr = gets.chomp
	nbn = nbr.to_i
	ar = 0 
	
	while nbn > 0  
		nbn-= 1
		ar += 1
		if nbn == ar 
			puts "il y a #{ar} ans, tu avais la moitié de l'age que tu as aujourd'hui"
		else
			puts "il y a #{ar} ans, tu avais #{nbn} ans"
		end
	end 
