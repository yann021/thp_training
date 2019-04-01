require_relative 'board'
require_relative 'board_case'
require_relative 'player'

class Game

  attr_accessor :player1, :player2, :game_status

  def initialize

    puts "Bienvenue dans le TicTacToe"

    puts "Joueur 1 : Choisis ton pseudo"
    print "> "
    @player1 = Player.new(gets.chomp, "X")

    puts "Joueur 2 : Choisis ton pseudo"
    print "> "
    @player2 = Player.new(gets.chomp, "O")
    puts
    puts "Alright, commençons la partie"
    puts "#{@player1.name}, tu joues avec X"
    puts
    puts "#{@player2.name}, tu joues avec O"

    @board = Board.new
  end

  def turn

    #tab = [["A1", "A2", "A3"],["B1", "B2", "B3"],["C1", "C2", "C3"] ]
    puts "Les cases sont numérotés de manière suivant: "
    @board.print_board
    sleep 1

    @game_status = true # Game is on going
    turn = 1

    while @game_status

    if turn % 2 == 0
    puts "\n#{@player2.name}, où souhaites tu jouer ? (case entre A1 et C3)\n"
      else
    puts "\n#{@player1.name}, où souhaites tu jouer ? (case entre A1 à C3)\n"
      end

    player_choice = gets.chomp.to_s

    if turn % 2 == 0
    apply_player_choice = @board.play_turn(@player2.symbol, player_choice)
      else
    apply_player_choice = @board.play_turn(@player1.symbol, player_choice)
      end

    while apply_player_choice == false
      player_choice = gets.chomp.to_s
      if turn % 2 == 0
    apply_player_choice = @board.play_turn(@player2.symbol, player_choice)
      else
    apply_player_choice = @board.play_turn(@player1.symbol, player_choice)
      end
    end

      @board.print_board
#On check si quelqu'un a gagné
      if @board.victory == true
      if turn % 2 == 0
      puts "Bravo #{@player2.name} tu as gagné!"
      else
      puts "Bravo #{@player1.name} tu as gagné!"
        end
      end
      #On affiche le vainqueur et arrête la boucle si on a une victoire
    break if @board.victory == true
      #On incrémente le nombre de tour sinon 
      turn += 1
      #On recommence le jeux si le nombre de tour dépasse 9 et si personne n'a gagné
      if turn == 10
      puts "Match nul, on recommence!"
      
      turn = 1
      #On réinitialise la table
      #@board.array_cases = tab
      @board.print_board
      end
    end
  end
end
