def welcome
	puts "Bienvenue dans notre jeu. Tu es tout en bas de l'escalier à l'étage 0. \n
	Appuies sur Entrer pour lancer le dé. \n
	Si tu fais 1, tu descends d'un étage. \n
	Si tu fais 2, 3 ou 4, tu restes là où tu es. \n
	Si tu fais 5 ou 6, tu avances d'un étage. \n \n
	Bonne chance ! "
end

def random
	random = 1 + rand(6)
end

def replay
	puts "Appuies sur Entrer"
	temp = gets.chomp
	dice = random 
end

def check (dice)
	case dice
		when 1 
			return 0
		when 2, 3, 4
			return 1
		when 5, 6
			return 2
	end
end

def player_turn
	stage = 0
	nbr_turn = 0
	while stage != 10
		dice = replay
		mouv = check (dice)  
		case mouv
			when 0
				if stage > 0
					stage -= 1
				end
			when 2
				stage += 1
		end
	puts "Tu as eu #{dice}, tu es donc à l'étage n°#{stage} !"
	nbr_turn += 1
	end
	puts "Félicitations tu as gagné en #{nbr_turn} tours !"
end

def average_finish_time
	stat = 0
	100.times do
		nbr_turn = 0
		stage = 0
		while stage != 10
			dice = random
			mouv = check (dice)
			case mouv
				when 0
					if stage > 0
						stage -= 1
					end
				when 2
					stage += 1
			end
		nbr_turn += 1
		end
	stat += nbr_turn
	end
	stat = stat / 100.00
	puts "La moyenne est de #{stat} tours"
end

def perform 
	welcome
	player_turn
	average_finish_time
end

perform 
