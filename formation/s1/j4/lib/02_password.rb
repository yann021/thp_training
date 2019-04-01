
def signup
	puts ""
	puts "Definissez votre mot de passe :"
	print "Tapez ici >"
	passWord = gets.chomp
	return passWord
end

def login(passWord)
	puts ""
	puts "Veuillez taper votre mot de passe :"
	print "Tapez ici >"
	userPassword = gets.chomp
	testPass = (passWord == userPassword)
end

def welcome_screen
	puts ""
	puts "#######################################"
	puts "Bienvenue sur le site secret de la NASA"
	puts "#######################################"
	puts ""
	puts ">Moon-landing conspiracists."
	puts ">chem-trails"
	puts ">flatEarth"
	puts ""
end

def perform
	passWord = signup
	testPass = login(passWord)
	while not testPass
		puts "Erreur - Ce n'est pas le meme mot de passe !"
		testPass = login(passWord)
		end
	welcome_screen
end

perform
