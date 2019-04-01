require_relative 'show'
require_relative 'player'

class Controller


  def initialize
    @show = Show.new

  end

  def new_players               # ok
    @show.creation_player
  end  

  def new_game               # ok
    $liscase.each do |bcase|
      $board[bcase] = ' ' # blanc au lieu de vide pour affichage par puts
    end
    @show.show_board

    $player     = 1
    $fini       = false
    $coup       = 0
  end  

  def turn
#   saisie avec controle (1er caractère a à c, second 1 a 3 ET case vide (à blanc pour présentation))
    oksaisie = false
    while (!(oksaisie)) do
      print $players["name"+$player.to_s]+" joue : "
      saisie = gets.chomp
      oksaisie = true if ((saisie =~ /^[a-c]{1}[1-3]{1}$/) && ($board[saisie] == " "))
    end
#   traitement de la saisie : affectation case, incrémentation coup et affichage tableau 
    symjou = $players["symbole"+$player.to_s]
    $board[saisie] = symjou
    $coup+= 1
    @show.show_board
#   test gain
    $lisgain.each do |lisun|
      if (($board[lisun[0]] == symjou) && ($board[lisun[1]] == symjou) && ($board[lisun[2]] == symjou))
#       boucle sur les 8 possibiliter et pour chancune des 8 on test si les 3 case sont egale au meme symbole
        puts $players["name"+$player.to_s]+" a GAGNE !!!"
        puts ""
        $fini = true
        break
      end
    end
#   test fin de partie
    if (!($fini))
      if ($coup == 9)
        puts "match NUL !!!"
        puts ""
        $fini = true
      else
#       échange joueur pour le prochain coup
        if ($player == 1)
          $player = 2
        else
          $player = 1
        end
      end
    end
  end
end