"use strict";

const entrepreneurs = [
  { first: 'Steve', last: 'Jobs', year: 1955 },
  { first: 'Bill', last: 'Gates', year: 1955 },
  { first: 'Mark', last: 'Zuckerberg', year: 1984 },
  { first: 'Jeff', last: 'Bezos', year: 1964 },
  { first: 'Elon', last: 'Musk', year: 1971 },
  { first: 'Larry', last: 'Page', year: 1973 },
  { first: 'Jack', last: 'Dorsey', year: 1976 },
  { first: 'Evan', last: 'Spiegel', year: 1990 },
  { first: 'Brian', last: 'Chesky', year: 1981 },
  { first: 'Travis', last: 'Kalanick', year: 1976 },
  { first: 'Marc', last: 'Andreessen', year: 1971 },
  { first: 'Peter', last: 'Thiel', year: 1967 }
];

let k, l70, Cl70, nbrIns, lkey;


nbrIns = entrepreneurs.length;
l70    = [];

for (k = 0; k < nbrIns; k++ ) {
	if (entrepreneurs[k].year < 1980 && entrepreneurs[k].year > 1969) { l70.push(k); } };

Cl70 = l70.length;
console.log("Nombre de personne né dans les années 70 : " + Cl70 )

for (k = 0; k < nbrIns; k++ ) {
	console.log(entrepreneurs[k].first + " " + entrepreneurs[k].last + " (" + String(2019-entrepreneurs[k].year) + " ans)") };

console.log("--------------------------------");

// entrepreneurs.sort(function(a,b) {return (a.last > b.last) ? 1 : ((b.last > a.last) ? -1 : 0);} );
entrepreneurs.sort(function(a,b) {
	if      (a.last > b.last) return 1;
	else if (b.last > a.last) return -1;
	else                      return 0;
} );

for (k = 0; k < nbrIns; k++ ) {
	console.log(entrepreneurs[k].first + " " + entrepreneurs[k].last + " (" + String(2019-entrepreneurs[k].year) + " ans)") };

/* àa a l'air de marcher ??? ça te va ???
oui j'en demandai pas tant... pas sur d'avoir bien capter la derniere ligne ...
attends ... deja ... la méthode l70.push n'était pas nécessaire puisque tu ne voulais que le nombre ...
ensuite : le no de la ligne que tu ne comprend pas ?
35
ah !!! il existte une fonction sort (trier) en javascript ... elle marche avec des tableu par exemple !!!
rr

var tst = [ "pomme", "orange", "ananas"];
console.log(tst.sort());

donc, ça trie "nativement" des tableaux ...
mais dans le cas d'un tableau d'objets, il faut lui dire comment on compare 2 objets ...
là on lui dit comment comparer l'objet a et l'objet b ... en comparant en fait a.last (le nom de famille) avec b.last

en fait, on lui dit que a.last > b.las veut dire que a > b ... et sinon, l'inverse ... avec une syntaxe à la con ... d'où internet ...
compris ? 
a peut près mais c a reprendre ...

function(a,b) {return (a.last > b.last) ? 1 : ((b.last > a.last) ? -1 : 0);
en fait, je pense que la fonction utilisé compare 2 objet, le a et le b ... et renvoie :
1 si a > b
-1 si b > a
0 si a = b 

en sachant que les comparaisons se font sur la proprieté .last ...
on va essayer pour voir ;-)))

c'eest bien ça, mais avec une très ancienne version du système de test qui permet de mettre tout ça sur une seule ligne ;-)))
oki ???
en fait, tu lui explique simplement COMMENT comparer 2 objets et ensuite il sait trier un tableau d'objets

oui.. mais on va s'arreter la paske honetement je crois que c'est plus la peine.. iles 2h00 mdr ;)

oki ... bonne nuit ;-)))
*/