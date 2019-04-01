require 'bundler'
Bundler.require

require_relative 'game'


class Show

  #Affichage du plateau
  def morpion (a1,a2,a3,b1,b2,b3,c1,c2,c3)

  	
    puts "          ______________________________  "
    puts "         /_____________________________/| "
    puts "        |         |         |         | | "  
    puts "    ____|    1    |    2    |    3    | | "
    puts "   /____|_________|_________|_________| | "
    puts "  |     |         |         |         | | "
    puts "  |  A  |    #{a1}    |      #{a2}  |      #{a3}  | | "  
    puts "  |_____|_________|_________|_________| | "
    puts "  |     |         |         |         | | "
    puts "  |  B  |    #{b1}    |     #{b2}   |      #{b3}  | | "
    puts "  |_____|_________|_________|_________| | "
    puts "  |     |         |         |         | | "
    puts "  |  C  |     #{c1}   |     #{c2}   |     #{c3}   | | "
    puts "  |_____|_________|_________|_________|/  "
    puts ""  

  end


end

