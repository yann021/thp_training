# frozen_string_literal: true

class Controller
  def initialize
    # Création de nos objets
    @board = Board.new
    @index = Index.new
  end

  def new_game(player_1, player_2)
    # Création des variables d'instance, et début du jeu
    @players = [player_1, player_2]
    @morpion = Morpion.new
    turn
  end

  def turn
    x = 0
    # Boucle qui permet de faire tourner le jeu tant qu'il n'y a pas eu d'égalité ou de victoire
    while x == 0
      player_item = Emoji.find_by_alias("x").raw

      # Boucle qui altèrne entre les deux joueurs
      @players.each do |player|
        # Nettoie le terminal
        system('clear')

        #Affiche le plateau actuel
        @board.show(@morpion)

        #Vérifie si le joueur a rentré une variable correcte ou pas déjà utilisée
        while @morpion.check_choice(choice = @index.ask(player)) == false
          @index.wrong
        end

        #Place le pion sur le plateau
        @morpion.player_choice(choice, player_item)

        #Vérifie l'issue de la partie suite au tour du joueur
        if (x = check_end(player)) == 1
          break
        end

        # Permet de changer le 'joueur'
        player_item = Emoji.find_by_alias("o").raw
      end
    end
  end

  def check_end(player)
    # Méthode qui vérifie si on a une égalité, une victoire ou si on continue de jouer
    case @morpion.check_end
    when 1
      @index.win(player)
      @board.show(@morpion)
      return 1
    when 2
      @index.draw
      @board.show(@morpion)
      return 1
    else
      0
    end
  end
end
