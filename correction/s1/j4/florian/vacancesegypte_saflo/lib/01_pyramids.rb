def ask_stages
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
	print "> "
	stage_nbr = gets.chomp.to_i
end

def full_pyramid (stage_nbr)
	puts "Voici la pyramide :"
	x = 0
	stage_nbr.times do
		x += 1
		stage_str = String.new
		(stage_nbr - x).times do
			stage_str = stage_str + " "
		end
		(x*2-1).times do
			stage_str = stage_str + "#"
		end
		puts stage_str
	end
end

def wtf_pyramid (stage_nbr)
	x = stage_nbr
	stage_nbr.times do
		x -= 1
		stage_str = String.new
		(stage_nbr - x).times do
			stage_str = stage_str + " "
		end
		(x*2-1).times do
			stage_str = stage_str + "#"
		end
		puts stage_str
	end
end

def perform
	stage_nbr = ask_stages
	case (stage_nbr % 2)
	when 0
		puts "Loupé, je t'ai demandé un nombre impair ! Renégat !"
	else
		full_pyramid(stage_nbr)
		wtf_pyramid(stage_nbr)
	end
end

perform
