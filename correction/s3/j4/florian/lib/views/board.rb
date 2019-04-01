class Board

  def initialize
  end

  def show(morpion)
    # Méthode qui nous affiche le tableau en prenant les valeur de notre objet morpion
    puts "     1    2    3"
    puts "   - - - - - - - -"
    puts "A | #{morpion.a1} | #{morpion.a2} | #{morpion.a3} |"
    puts "   - - - - - - - -"
    puts "B | #{morpion.b1} | #{morpion.b2} | #{morpion.b3} |"
    puts "   - - - - - - - -"
    puts "C | #{morpion.c1} | #{morpion.c2} | #{morpion.c3} |"
    puts "   - - - - - - - -"
    
  end

end