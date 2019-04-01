// Fonctionnalité 1 //
var footerClick = document.getElementsByTagName("footer")[0];
let i=0;
var onButtonClick = function() {
  i++;
  console.log("clique numéro " + i);
};
footerClick.addEventListener("click", onButtonClick);

// Fonctionnalité 2 //
var navBar = document.getElementById("navbarHeader");
var button = document.getElementsByClassName("navbar-toggler")[0];

var onButtonClick = function() {
  navBar.classList.remove("collapse");
  navBar.classList.remove("bg-dark");
  console.log(button);
};

button.addEventListener("click", onButtonClick);

// Fonctionnalité 3 //
var edit = document.getElementsByClassName("btn btn-sm btn-outline-secondary")[0];
var txt = document.getElementsByClassName("card-text")[0];

var onButtonClick = function() {
  txt.style.color = "red";
  console.log("hello");
};
edit.addEventListener("click", onButtonClick);

// Fonctionnalité 4 //
var card2 = document.getElementsByClassName("col-md-4")[1];
var txt2 = document.getElementsByClassName("card-text")[1];
var edit2 = document.getElementsByClassName("btn btn-sm btn-outline-secondary")[1];
console.log(card2);

var onButtonClick2 = function() {
  console.log("hello");
  if (txt2.style.color != "green")
  {
    txt2.style.color= "green"
  }
  else {
    txt2.style.color="#212529"
  }
};
edit2.addEventListener("click", onButtonClick2);


// Fonctionnalité 5 //
var stylesheet = document.styleSheets[0];
var navBar = document.getElementsByClassName("navbar navbar-dark bg-dark box-shadow")[0];

buttonClick = function() {

  if (document.styleSheets[0].disabled == false)
  {
    document.styleSheets[0].disabled = true;
  }
  else
  {
    document.styleSheets[0].disabled = false;

  }

}

navBar.addEventListener("dblclick", buttonClick);

// Fonctionnalité 6 //
/*
var img = document.getElementsByTagName("img");

var txt = document.querySelectorAll("p.card-text");
var view = document.getElementsByClassName("btn-group");
function mouseOver () {
  let card_all = document.getElementsByClassName("col-md-4");


  for (let d=0; d < card_all.length; d++)
  {

    view[d].addEventListener("mouseover", function() {
      if (img[d].style.width!="20%") {
        img[d].style.width="20%";
        txt[d].hidden = true;
      }
      else {
        img[d].style.width="100%";
        txt[d].hidden = false;
      }
    });
  };
};


mouseOver();*/