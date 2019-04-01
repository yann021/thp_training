#pyramide montante en partant de gauche
def half_pyramid
	symbole = "#"
	compteur = 1

	puts "Salut, bienvenue dans ma half_pyramid ! Combien d'étages veux-tu ?"
	print "(entre 1 et 25!) >"
	input = gets.to_i
	puts "Voici la pyramide:"
	input.times do
		puts (symbole * compteur).rjust(25)
		compteur = compteur + 2
	end
	
end

#pyramid centrée a base large
def full_pyramid
	symbole = "#"
	compteur = 1

	puts "Salut, bienvenue dans ma full_pyramid ! Combien d'étages veux-tu ?"
	print "(entre 1 et 25!) >"
	input = gets.to_i
	puts "Voici la pyramide:"
	input.times do
		puts (symbole * compteur).center(50)
		compteur = compteur + 2
	end
end

#pyramide losange comme ramses voulais
def wtf_pyramid

	symbole = "#"
	compteur = 1
	puts "Salut, bienvenue dans ma wtf_pyramid ! Combien d'étages veux-tu ?"
	print "(entre 1 et 25!) >"
	input = gets.to_i
	inputt = (input/2)+1
	inputb = (input/2)

		if input %2 == 0
			then
			puts ""
			puts "#############################################"
			puts "#  Un nombre impair s'il te plait !!!! >:(  #"
			puts "#############################################"
			puts ""
			perform
		else
			puts "Voici la pyramide:"
			#input top pour pyramid du haut
			inputt.times do
				puts (symbole * compteur).center(input)
				compteur = compteur + 2
			end
			
			#reset compteur
			compteur = compteur - 4
			
			#input bottom pour pyramid du haut
			inputb.times do
				puts (symbole * compteur).center(input)
				compteur = compteur - 2
			end
		end
end

def perform
	half_pyramid
	full_pyramid
	wtf_pyramid
end

perform