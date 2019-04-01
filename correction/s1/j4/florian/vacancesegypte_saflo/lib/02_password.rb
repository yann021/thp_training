def signup
	puts "Bonjour, veuillez enregistrer votre mot de passe : "
	mdp = gets.chomp
end

def login (mdp_default)
	puts "Veuillez entrer votre mot de passe : "
	user_mdp = gets.chomp

	case user_mdp
	when mdp_default
		return 1
	else
		return 0
	end
end

def welcome_screen
	puts "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
end

def perform
	mdp_default = signup
	while login(mdp_default) != 1
	end
	welcome_screen
end

perform

