
// Fonctionnalité 1 :  
// lorsque l'utilisateur va cliquer sur le footer (portant le tag <footer>), tu vas afficher le mot "clique" en console.
/*
var footerEl = document.querySelector('footer');

var onFooterClick = function() {
  console.log("clique");
};

footerEl.addEventListener('click', onFooterClick); */

// fonctionnalité 1 bis :
// lorsque l'utilisateur va cliquer sur le footer, tu vas afficher en console "clic numéro x" avec x qui commence à 1 et s'incrémente de +1 à chaque clic.

var footerEl = document.querySelector('footer');
var x = 0
var onFooterClick = function() {
    console.log("clique numéro: " + x );
    x++;
};

footerEl.addEventListener('click', onFooterClick);

// fonctionnalité 2 :
// "Hamburger Menu" qui s'affiche depuis le début mais qui n'actionne rien quand on clique dessus

var menuEl = document.getElementById('navbarHeader');
var menuBtn = document.querySelector('button.navbar-toggler');


var looseCollapseClass = function () {
    menuEl.classList.toggle('collapse');
};

menuBtn.addEventListener('click', looseCollapseClass);

// fonctionnalité 3 : 
// si on clique sur le bouton "Edit" de la première card, le texte de la card va se mettre en rouge de façon irréversible (sauf si on recharge la page).

var editBtn = document.querySelectorAll('div.btn-group')[0].children[0];
var textEl = document.querySelectorAll('div.card-body > p.card-text')[0];

var changeTextColor = function() {
  textEl.style.color = "red";
};

editBtn.addEventListener('click', changeTextColor);

// fonctionnalité 4 :
// si on clique sur le bouton "Edit" de la deuxième card, le texte de la card va se mettre en vert. Si on re-clique dessus, il redevient comme avant ! Tu l'as compris, il va falloir que tu cherches comment faire un "toggle" sur le style du texte. C'est plus compliqué que sur une classe.

var editBtn2card = document.querySelectorAll('div.btn-group')[1].children[0];
var textEl2card = document.querySelectorAll('div.card-body > p.card-text')[1];
a = false;
console.log(editBtn2card);
console.log(textEl2card);

var changeTextColorToggle = function() {
  if(a == false) {
    textEl2card.style.color = "green";
    a = true;
  } else if (a == true) {
    textEl2card.style.color = "black";
    a = false;
  }
};

editBtn2card.addEventListener('click', changeTextColorToggle);

// fonctionnalité 5 : 
// si un utilisateur double clique sur la navbar en haut, tout Bootstrap disparaît et la page s'affiche comme si on avait oublié de mettre le CDN qui la relie au fichier CSS. Si possible, rends cette fonctionnalité réversible (un nouveau double-clic fait tout revenir à la normale).

var cdnBootstrap = document.getElementsByTagName('link')[0];
var navbarEl = document.getElementsByTagName('header')[0];
var headTag = document.getElementsByTagName('head')[0];
var b = false;

var navbarOnClick = function () {
  if(b == false) {
    cdnBootstrap.parentNode.removeChild(cdnBootstrap);
  b = true;
  } else if (b == true) {
    headTag.appendChild(cdnBootstrap);
    b = false;
  }
};

navbarEl.addEventListener('dblclick', navbarOnClick);

// fonctionnalité 6 :
// si un utilisateur passe sa souris sur le bouton "View" d'une card (n'importe laquelle), celle-ci va se réduire. Cela veut dire que le texte disparaît, l'image n'apparaîtra qu'à 20 % de sa taille d'origine et les boutons "Edit" / "View" restent visibles. Cette fonction sera réversible : s'il repasse sa souris, la card redevient normale !

var viewBtnEls = document.querySelectorAll('.btn-success')[0];
var textEl = document.querySelectorAll('div.card-body > p.card-text')[0];
console.log(viewBtnEls);
console.log(textEl);

var viewBtnHover = function () {
  textEl.parentNode.removeChild(textEl);
};


viewBtnEls.addEventListener('mouseover', viewBtnHover);
