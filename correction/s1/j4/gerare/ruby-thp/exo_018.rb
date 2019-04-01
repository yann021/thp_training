puts "Bonjour, je genere des adresses email"

nbr = 1
email = []
a = 0

while nbr < 51 do
   	
   	if nbr < 10
		email << "jean.dupont.#{a}#{nbr}@email.fr"
	
	else
		email << "jean.dupont.#{nbr}@email.fr"
	
	end
   	
   
   nbr = nbr + 1
   
end

nbremail = email.length 
# .length te dis le nombre de chose de ton array

puts "#{nbremail} adresses generees !"
