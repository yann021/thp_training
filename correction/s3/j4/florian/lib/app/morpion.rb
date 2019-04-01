# frozen_string_literal: true

class Morpion
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
  def initialize
    # Création des variables de l'instance
    @a1 = '  '
    @a2 = '  '
    @a3 = '  '
    @b1 = '  '
    @b2 = '  '
    @b3 = '  '
    @c1 = '  '
    @c2 = '  '
    @c3 = '  '
  end

  def check_choice(choice)
    # Méthode qui vérifie l'entrée du joueur
    choice = choice.downcase
    if (choice == 'a1' && @a1 == '  ') || (choice == 'a2' && @a2 == '  ') || (choice == 'a3' && @a3 == '  ') || (choice == 'b1' && @b1 == '  ') || (choice == 'b2' && @b2 == '  ') || (choice == 'b3' && @b3 == '  ') || (choice == 'c1' && @c1 == '  ') || (choice == 'c2' && @c2 == '  ') || (choice == 'c3' && @c3 == '  ')
      return true
    else
      return false
    end
  end

  def player_choice(choice, player_item)
    # Méthode permettant de placer le pion du joueur sur le plateau
    choice = choice.downcase
    case choice
    when 'a1'
      @a1 = player_item
    when 'a2'
      @a2 = player_item
    when 'a3'
      @a3 = player_item
    when 'b1'
      @b1 = player_item
    when 'b2'
      @b2 = player_item
    when 'b3'
      @b3 = player_item
    when 'c1'
      @c1 = player_item
    when 'c2'
      @c2 = player_item
    when 'c3'
      @c3 = player_item
    end
  end

  def check_end
    # Méthode permettant de vérifier si on a un vainqueur, une égalité ou si on continue à jouer
    if ((@a1 == @a2 && @a1 == @a3) && @a1 != '  ') || ((@b1 == @b2 && @b1 == @b3) && @b1 != '  ') || ((@c1 == @c2 && @c1 == @c3) && @c1 != '  ') || ((@a1 == @b1 && @a1 == @c1) && @a1 != '  ') || ((@a2 == @b2 && @a2 == @c2) && @a2 != '  ') || ((@a3 == @b3 && @a3 == @c3) && @a3 != '  ') || ((@a1 == @b2 && @a1 == @c3) && @a1 != '  ') || ((@a3 == @b2 && @a3 == @c1) && @a3 != '  ')
      1
    elsif @a1 != '  ' && @a2 != '  ' && @a3 != '  ' && @b1 != '  ' && @b2 != '  ' && @b3 != '  ' && @c1 != '  ' && @c2 != '  ' && @c3 != '  '
      2
    else
      0
    end
  end
end
