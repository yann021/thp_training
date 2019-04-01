puts "Bonjour, tape ton age"
print "Tape ton age ici: "
age = gets.to_i
annee = 0
agemoyen = age / 2

while age > 0 do
   	
   	if age == agemoyen
   	puts "Il y a #{annee} ans, tu avais la moitié de l'age que tu as aujourd'hui"
   	puts "Il y a #{annee+1} an(s) tu avais #{age-1} an(s) !"
   	
   	else
    puts "Il y a #{annee+1} an(s) tu avais #{age-1} an(s) !"
	
	end

   age = age - 1
   annee = annee + 1


end
