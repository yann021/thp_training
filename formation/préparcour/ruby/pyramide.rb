	oks=false
	while !oks do
		print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?\n>"
		nbr = gets.chomp
		nbn = nbr.to_i
		if (nbn >= 0) && (nbn <= 25)
			oks=true
		end
	end
	puts "Voici la pyramide :"
	
	i=0
	nbn.times do
		i+= 1
		(nbn-i).times do # boucle sur les espaces
			print " "
		end
		i.times do # boucle sur les dièses
			print "#"
		end
		print "\n"
	end
