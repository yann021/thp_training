
	print "nombre ?\n> "
	nbr = gets.chomp
	nbn = nbr.to_i
	nbe = nbr.to_i
	 
	 while nbn < 2018
		nbn+= 1
		puts "En #{nbn} tu avais #{nbn - nbe} ans"
	 end