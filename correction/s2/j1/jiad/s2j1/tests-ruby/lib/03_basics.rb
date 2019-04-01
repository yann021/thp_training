def who_is_bigger a, b , c
# if a == nil
#   return "nil detected"
# end
# if b == nil
#   return "nil detected"
# end
# if c == nil
#   return "nil detected"
# end
# a = a
# b = b
# c = c

if a == nil
  return "nil detected"
elsif b == nil
  "nil detected"

elsif c == nil
  return "nil detected"

elsif a > b && a > c
  return "a is bigger"

elsif b > a && b > c
  return "b is bigger"

elsif c > b && c > a
  return "c is bigger"
end
end



def reverse_upcase_noLTA rev
#puts  rev.reverse.upcase.gsub(/[LTA]/, "")#gsub te permet de supprimer des characteres choisit dans un string et les supprimer et remplacer
rev.reverse.upcase.gsub(/[LTA]/ , '')
end

#reverse_upcase_noLTA ("pAAAolototA")



def array_42 array

#return array.each_char { |chr| chr.max  }
if array.include?(42)
  return true
else
  return false

end
end




def magic_array a

if a % 4
  return 0

end

end
