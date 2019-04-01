class Index

  def initialize
  end
  
  def ask(player)
    # Méthode qui demande au joueur où il veut jouer, et retourne la valeur
    print "#{player}, choisis quelle case jouer : "
    choice = gets.chomp
    return choice
  end

  def wrong
    # Méthode appelé en cas de valeur erronée
    puts "Vous avez entré une case erronée ou déjà pris"
    puts "Recommencez !"
  end

  def win(player)
    # Méthode annonçant la victoire du joueur
    system("clear")
    puts "Félicitations #{player} tu as gagné #{Emoji.find_by_alias("tada").raw}!"
  end

  def draw
    # Méthode annonçant une égalité
    system("clear")
    puts "Égalité"
  end

end