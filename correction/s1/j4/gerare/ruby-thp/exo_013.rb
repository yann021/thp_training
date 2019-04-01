puts "Bonjour, tape ton annee de naissance"
print "Tape ton annee ici: "
annee = gets.to_i
rAnnee = 2018 - annee
compteur = rAnnee

while compteur > 0 do
   puts annee + 1
   compteur = compteur -1
   annee = annee + 1
end
