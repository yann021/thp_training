function function_1() {
  let footer = document.getElementsByTagName("footer")[0]

  footer.addEventListener("click", function(){
    console.log("Clique");
  });
}

function function_1_bis() {
  let footer = document.getElementsByTagName("footer")[0]
  let counter = 0

  footer.addEventListener("click", function(){
    console.log("Clique numéro " + ++counter);
  });
}

function function_2() {
  let button = document.querySelectorAll(".navbar-toggler")[0]
  let header = document.getElementById("navbarHeader")

  button.addEventListener("click", function(){
    header.classList.contains('collapse') ? header.classList.remove("collapse") : header.classList.add("collapse");
  });
}

function function_3() {
  let card_1 = document.querySelectorAll('.row .col-md-4')[0];
  let button = document.getElementsByClassName("btn-group")[0].lastElementChild;

  button.addEventListener("click", function(){
    card_1.style.color = "red";
  });
}

function function_4() {
  let card_2 = document.querySelectorAll('.row .col-md-4')[1]
  let button = document.getElementsByClassName("btn-group")[1].lastElementChild  

  button.addEventListener("click", function(){
    card_2.style.color == "green" ? card_2.style.color = "black" : card_2.style.color = "green";
  });
}

function function_5() {
  let navigation_bar = document.getElementsByClassName("navbar")[0]
  let header = document.getElementsByTagName("header")[0]

  header.addEventListener("dblclick", function(){
    document.styleSheets[0].disabled == true ? document.styleSheets[0].disabled = false : document.styleSheets[0].disabled = true;
  }); 
}

function function_6() {
  let card = document.getElementsByClassName('col-md-4');
  let buttons = document.getElementsByClassName('btn-group');

  for (let i = 0; i < card.length; i++) {
    buttons[i].firstElementChild.addEventListener('mouseover', function() {
      if (card[i].getElementsByClassName('card-img-top')[0].style.width === "20%") {
        card[i].getElementsByClassName('card-img-top')[0].style.width = "100%";
        card[i].getElementsByClassName('card-text')[0].style.display = "block";
      } else {
        card[i].getElementsByClassName('card-img-top')[0].style.width = "20%";
        card[i].getElementsByClassName('card-text')[0].style.display = "none";
      }
    });
  }
}

function function_7() {
  let card = document.getElementsByClassName('col-md-4');
  let row = document.getElementsByClassName('row')[1];
  let arrow = document.getElementsByClassName('btn-secondary')[0];

  arrow.addEventListener('click', function() {
    row.insertBefore(card[card.length-1], card[0]);
  });
}

function function_8() {
  let card = document.getElementsByClassName('col-md-4');
  let row = document.getElementsByClassName('row')[1];
  let arrow = document.getElementsByClassName("btn btn-primary my-2")[0];

  arrow.addEventListener('click', function(event){
    event.preventDefault();
    row.appendChild(card[0]);
  });
}

function function_9() {
  let page_logo = document.getElementsByClassName('navbar-brand')[0];
  let body = document.getElementsByTagName('body')[0];

  page_logo.addEventListener("keypress", function(event) {
    event.preventDefault();
    let press = event.key
    if (press == "a") {
      body.classList = "";
      body.classList.add("col-md-4");
    } else if (press == "y") {
      body.classList = "";
      body.classList.add("col-md-4");
      body.classList.add("offset-md-4");
    } else if (press == "p") {
      body.classList = "";
      body.classList.add("col-md-4");
      body.classList.add("offset-md-8");
    } else if (press == "b") {
      body.classList = "";
    }
  });
}

function_1();
function_1_bis();
function_2();
function_3();
function_4();
function_5();
function_6();
function_7();
function_8();
function_9();