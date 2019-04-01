###D'abord, que fait #{} ? 
#Cela permet au programme d'interpreter litteralement ce qui ce situe dans {} ci dessous, les operations par exemple.

###Ensuite, mets un commentaire devant chacune des lignes et explique ce qu'elle fait.

#affiche le sting: "On va compter le nombre d'heures de travail à THP" puis va a la ligne
puts "On va compter le nombre d'heures de travail à THP"

#affiche le sting: "Travail : " puis calcule 10*5*11,  puis va a la ligne
puts "Travail : #{10 * 5 * 11}"

#affiche le sting: "En minutes ça fait : " puis calcule 10*5*11*60,  puis va a la ligne
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

#affiche le sting: Et en secondes ?" puis va a la ligne
puts "Et en secondes ?"

#affiche le resultat de 10*5*11*60*60 puis va a la ligne
puts 10 * 5 * 11 * 60 * 60

#affiche le sting: "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?" puis va a la ligne
puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

#Verifie si 3 + 2  est bien inferieur a 5 - 7 ce qui est faux, il retourne donc false, puis va a la ligne
puts 3 + 2 < 5 - 7

#affiche le sting: "Ça fait combien 3 + 2 ? " puis calcule 3+2,  puis va a la ligne
puts "Ça fait combien 3 + 2 ? #{3 + 2}"

#affiche le sting: "Ça fait combien 5 - 7 ? " puis calcule 5-7,  puis va a la ligne
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

#affiche le sting: "Ok, c'est faux alors !" puis va a la ligne
puts "Ok, c'est faux alors !"

#affiche le sting: "C'est drôle ça, faisons-en plus :" puis va a la ligne
puts "C'est drôle ça, faisons-en plus :"

#affiche le sting: "On va compter le nombre d'heures de travail à THP", puis Verifie si 5  est bien superieur a -2 ce qui est vrai, il retourne donc true, puis va a la ligne
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"

#affiche le sting: "On va compter le nombre d'heures de travail à THP", puis Verifie si 5  est bien superieur ou egal a -2 ce qui est vrai, il retourne donc true, puis va a la ligne
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"

#affiche le sting: "On va compter le nombre d'heures de travail à THP", puis Verifie si 5  est bien inferieur ou egal a -2 ce qui est faux, il retourne donc false, puis va a la ligne
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"
