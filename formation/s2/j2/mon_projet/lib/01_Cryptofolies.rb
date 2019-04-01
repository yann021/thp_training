	def crypto_un(let, dec)
	#	     majuscule                           minuscule
		if ((let.ord >= 65 and let.ord <= 90) || (let.ord >= 97 and let.ord <= 122))
			shift = 0
			shift = 32 if (let.ord >= 97 and let.ord <= 122) # minuscule
			if (let.ord + dec <= 90 + shift)
				return (let.ord + dec).chr
			else
				return ((64 + shift)  + let.ord + dec - ( 90 + shift)).chr
			end
		else
			return let
		end
	end

	cha="Essai de Cryptage CESAR"
	cha="What a string!"
	cry=""
	dec=5

	i=0
	cha.length.times do
		cry+=crypto_un(cha[i], dec)
		i+=1
	end

	puts cry

=begin

puts crypto_un("A", 5)
puts crypto_un("X", 5)
puts crypto_un("a", 5)
puts crypto_un("x", 5)
puts crypto_un("@", 5)

 	tst = a.ord
 	puts tst
 	tst += n
 	puts "#{tst.chr}"

maj 65 ->  90          lettre.ord + decalage > 90 => 64 + (lettre.ord + decalage - 90)
min 97 -> 122

=end