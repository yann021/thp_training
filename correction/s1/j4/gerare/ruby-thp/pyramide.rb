symbole = "#"

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "(entre 1 et 25!) >"

input = gets.to_i
compteur = 1

puts "Voici la pyramide:"

input.times do
	
	puts (symbole * compteur).rjust(25)
	compteur = compteur + 1

end
