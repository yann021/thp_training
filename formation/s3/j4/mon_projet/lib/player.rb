class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :valeur
  
  def initialize(name, valeur)
    #TO DO : doit régler son nom et sa valeur
    @name = name 
    @valeur = valeur
  end
end