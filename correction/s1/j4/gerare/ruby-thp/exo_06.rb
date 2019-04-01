number_of_hours_worked_per_day = 10
number_of_days_worked_per_week = 5
number_of_weeks_in_THP = 11

puts "Travail : #{number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"
puts "Et en minutes ça fait : #{number_of_minutes_in_an_hour * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"

#Lance le programme. 

###Que se passe-t-il ? 
#L'erreur suivante:
#exo_06.rb:6:in `<main>': undefined local variable or method `number_of_minutes_in_an_hour' for main:Object (NameError)
#Did you mean?  number_of_weeks_in_THP

###Peux-tu expliquer ?
#Oui, la variable number_of_minutes_in_an_hour n'existe pas car pas declarée (elle n'a aussi aucune valeur attribuée)