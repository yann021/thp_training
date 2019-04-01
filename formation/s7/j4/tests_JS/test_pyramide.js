let symbole = "#";
let symbole1 = " ";
let nbrSpace = 0;
let nbr =0;
let incre = 0;

let value = prompt('tape un nombre stp ?');
while(incre != value) {
	incre +=1;
	nbrSpace = value - incre;
  nbr = incre;
  affSapce = symbole1 * nbrSpace;
  aff = symbole * nbr;
  console.log(affSapce + aff); }
