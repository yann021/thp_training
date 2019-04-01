require_relative 'board_case'

class Board

  def initialize
    @case1 = BoardCase.new("A1", 1)
    @case2 = BoardCase.new("A2", 2)
    @case3 = BoardCase.new("A3", 3)
    @case4 = BoardCase.new("B1", 4)
    @case5 = BoardCase.new("B2", 5)
    @case6 = BoardCase.new("B3", 6)
    @case7 = BoardCase.new("C1", 7)
    @case8 = BoardCase.new("C2", 8)
    @case9 = BoardCase.new("C3", 9)

    @array_cases = [[@case1, @case2, @case3],[@case4, @case5, @case6],[@case7, @case8, @case9]]
  end

  def print_board
    #Pour afficher le plateau
     @array_cases.each do |x|
            puts "\t\t\t --- --- ---"
            puts "\t\t\t| "+x[0].to_s+" | "+x[1].to_s+" | "+x[2].to_s+" |"
            end
            puts "\t\t\t --- --- ---"
    end


  def play_turn(case_value, case_id)

    case case_id
    when "A1"
      if @array_cases[0][0].to_s == "A1".to_s 
         @array_cases[0][0] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide! Choisissez un autre: "
      return false
      end
    when "A2"
      if @array_cases[0][1].to_s == "A2".to_s
         @array_cases[0][1] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide! Choisissez un autre: "
        return false
      end
    when "A3"
      if @array_cases[0][2].to_s == "A3".to_s
         @array_cases[0][2] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide! Choisissez un autre: "
        return false
      end
    when "B1"
      if @array_cases[1][0].to_s == "B1".to_s
         @array_cases[1][0] = case_value
       else
        puts "Erreur, l'emplacement n'est pas vide! Choisissez un autre: " 
        return false
        end
    when "B2"
      if @array_cases[1][1].to_s == "B2".to_s
         @array_cases[1][1] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide! Choisissez un autre: "
        return false
      end
    when "B3"
       if @array_cases[1][2].to_s == "B3".to_s
          @array_cases[1][2] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide! Choisissez un autre: "
        return false
        end
    when "C1"
      if @array_cases[2][0].to_s == "C1".to_s
         @array_cases[2][0] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide!"
        return false
      end
    when "C2"
      if @array_cases[2][1].to_s == "C2".to_s
         @array_cases[2][1] = case_value
      else
        puts "Erreur, l'emplacement n'est pas vide!"
        return false
      end
    when "C3"
      if @array_cases[2][2].to_s == "C3".to_s
         @array_cases[2][2] = case_value
      else
        end
        puts "Erreur, l'emplacement n'est pas vide!"
        return false
      end

      def victory
        # Every winning combinations
        if
        (@array_cases[0][0] == @array_cases[0][1]) && (@array_cases[0][1] == @array_cases[0][2]) ||
        (@array_cases[1][0] == @array_cases[1][1]) && (@array_cases[1][1] == @array_cases[1][2]) ||
        (@array_cases[2][0] == @array_cases[2][1]) && (@array_cases[2][1] == @array_cases[2][2]) ||
        (@array_cases[0][0] == @array_cases[1][0]) && (@array_cases[1][0] == @array_cases[2][0]) ||
        (@array_cases[0][1] == @array_cases[1][1]) && (@array_cases[1][1] == @array_cases[2][1]) ||
        (@array_cases[0][2] == @array_cases[1][2]) && (@array_cases[1][2] == @array_cases[2][2]) ||
        (@array_cases[0][0] == @array_cases[1][1]) && (@array_cases[1][1] == @array_cases[2][2]) ||
        (@array_cases[0][2] == @array_cases[1][1]) && (@array_cases[1][1] == @array_cases[2][0])

        true
      else
        false
      end
    end
  end
end
