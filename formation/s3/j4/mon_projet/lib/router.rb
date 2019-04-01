require_relative 'controller'

class Router

	def initialize
		@controller = Controller.new#
		$players    = Hash.new
		$board      = Hash.new
		$liscase    = ["a1","a2","a3","b1","b2","b3","c1","c2","c3"]
		$lisgain    = [["a1","a2","a3"],["b1","b2","b3"],["c1","c2","c3"],["a1","b1","c1"],["a2","b2","c2"],["a3","b3","c3"],["a1","b2","c3"],["a3","b2","c1"]]
		$player     = 1
		$fini       = false
		$coup       = 0
#		initialisation d'une variable 
	end
  
	def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
		system("clear")
		puts "BIENVENUE DANS TIC-TAC-TOE"
		puts ""
		while true
#			on affiche le menu
			puts "Tu veux faire quoi BG ?"
			puts "1. Nouveaux joueurs et nouvelle partie"
			if ($players.length != 0)
#			on affiche le choix 2 que si les joueur on été renitialiser	
				puts "2. Nouvelle partie"
			end
			puts "9. Je veux quitter l'app"
			params = gets.chomp.to_i #on attend le choix de l'utilisateur

			if     ((params == 1) || ((params == 2) && ($players.length != 0)))
				if (params == 1)
#					au lancement de la partie on commence par initialiser les joueur
					puts "lancement de la partie"
					@controller.new_players
				else
#					on ralance la parti que si les joueurs sont bien initialiser				
					puts "relançons une partie"
				end
				@controller.new_game
				while (!($fini)) do
					@controller.turn
				end

			elsif  (params == 9)
				puts "À bientôt !"
				break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
			else
				puts "Ce choix n'existe pas, merci de ressayer" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
			end
		end
	end
end