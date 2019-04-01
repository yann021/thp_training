puts "Bonjour, tape ton annee de naissance"
print "Tape ton annee ici: "
annee = gets.to_i
rAnnee = 2018 - annee
compteur = rAnnee
age = 0

while compteur > 0 do
   puts annee + 1
   puts  "Tu as eu #{age + 1} an(s) cette annee la"
   compteur = compteur -1
   annee = annee + 1
   age = age + 1
end
