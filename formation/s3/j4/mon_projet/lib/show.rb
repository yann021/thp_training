class Show
	def initialize
	end

  def creation_player
		print "What is your name player 1 ............: "
		$players["name1"] = gets.chomp
		print "what is your symbole player 1 (x ou o) : "
		$players["symbole1"] = gets.chomp
		while $players["symbole1"] != "x" && $players["symbole1"] != "o"
			print "what is your symbole player 1 (x ou o) : "
			$players["symbole1"] = gets.chomp
		end
		print "What is your name player 2 ............: "
		$players["name2"] = gets.chomp
		if $players["symbole1"] == "x"
		   $players["symbole2"] = "o"
		else $players["symbole1"] == "o"
			$players["symbole2"] = "x"
		end	
  end
=begin
creation_player demande aux utilisateur leur nom et leurs symbole,
le tout es rentré dans un hash que l'on return a la classe game
il ya une boucle, qui fais recommencer l'utilisateur si il ne rentre pas
un des deux ymbole définie. Le joueur deux ne choisis pas sont symbole, 
il a celui restant par defaut. 		
=end

  def show_board
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
  	system("clear")
		puts "BIENVENUE DANS TIC-TAC-TOE"
		puts ""
		puts "#{$players["symbole1"]} : #{$players["name1"]}"
		puts "#{$players["symbole2"]} : #{$players["name2"]}"
		puts ""
    puts "
    a     b     c
       |     |
1   #{$board[$liscase[0]]}  |  #{$board[$liscase[3]]}  |  #{$board[$liscase[6]]}
  -----|-----|-----
2   #{$board[$liscase[1]]}  |  #{$board[$liscase[4]]}  |  #{$board[$liscase[7]]}
  -----|-----|-----
3   #{$board[$liscase[2]]}  |  #{$board[$liscase[5]]}  |  #{$board[$liscase[8]]}
       |     |"
      puts ""
  end
end