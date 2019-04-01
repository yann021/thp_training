puts "Bonjour, tape ton age"
print "Tape ton age ici: "
age = gets.to_i
annee = 0

while age > 1 do
   
   puts "Il y a #{annee+1} an(s) tu avais #{age-1} an(s) !"
   
   age = age - 1
   annee = annee + 1
end