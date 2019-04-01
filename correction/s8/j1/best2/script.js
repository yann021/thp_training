let footer = document.getElementsByTagName('footer')[0];
footer.addEventListener('click', onFooter);

let MenuButton = document.getElementsByClassName('navbar-toggler')[0];
MenuButton.addEventListener('click',onMenuButton);

let firstEdit = document.getElementsByClassName('card-body')[0].getElementsByClassName('btn')[1];
firstEdit.addEventListener('click', onEdit1);

let secondEdit = document.getElementsByClassName('card-body')[1].getElementsByClassName('btn')[1];
secondEdit.addEventListener('click', onEdit2);

let navBar = document.getElementsByTagName('header')[0];
navBar.addEventListener('dblclick',rmrf);

let cards = document.getElementsByClassName('card');
for(let card of cards) {
	card.getElementsByClassName('btn-success')[0].addEventListener('mouseenter', reduce);
}

let turnRightButton = document.querySelectorAll('a.btn:nth-child(2)')[0];
turnRightButton.addEventListener('click',turnRight);

let turnLeftButton = document.querySelectorAll('a.btn:nth-child(1)')[0];
turnLeftButton.addEventListener('click',turnLeft);

topButton = document.getElementsByClassName('navbar-brand')[0];
topButton.addEventListener('keydown', logkey)

var i = 0;
function onFooter(){
	i++;
	console.log('clic numéro ' + i);
}

function onMenuButton(){
	let menu = document.getElementById('navbarHeader');
	if(menu.classList.contains('collapse')){
		menu.classList.remove('collapse');
	}else{
		menu.classList.add('collapse');
	}
}

function onEdit1(){
	let text = document.getElementsByClassName('card-body')[0].getElementsByClassName('card-text')[0];
	text.style.color = 'red';
}

function onEdit2(){
	let text = document.getElementsByClassName('card-body')[1].getElementsByClassName('card-text')[0];
	if (text.style.color === 'green'){
		text.style.color = '';
	}else{
		text.style.color = 'green';
	}
}

var present = true;
function rmrf(){
	let headLink = document.head.getElementsByTagName('link')[0];
	if (present === false){
		headLink.href  = 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css';
		present = true;	
	}else{
		headLink.href = '';
		present = false;
	}
}

function reduce(){
	let text = this.parentElement.parentElement.parentElement.parentElement.getElementsByClassName('card-text')[0];
	let img = this.parentElement.parentElement.parentElement.parentElement.getElementsByTagName('img')[0];

	if (!text.classList.contains('collapse')){
		text.classList.add('collapse');
		img.style.width = '20%';
	} else {
		text.classList.remove('collapse');
		img.style.width = '100%';
	}
}

function turnRight(event){
	let cards = document.querySelectorAll('.album  .row')[0];
	let card = document.getElementsByClassName('card')[5].parentElement;
	cards.insertAdjacentHTML('afterbegin',card.outerHTML);
	cards.removeChild(card);
	event.preventDefault();
}

function turnLeft(event){
	let cards = document.querySelectorAll('.album  .row')[0];
	let card = document.getElementsByClassName('card')[0].parentElement;
	cards.insertAdjacentHTML('beforeend',card.outerHTML);
	cards.removeChild(card);
	event.preventDefault();
}

function logkey(event){
	console.log(event);
	if (event.key === "a"){
		deleteClass();
		document.body.classList.add('col-4','offset-8');
	} else if (event.key === 'y'){
		deleteClass();
		document.body.classList.add('col-4','offset-4');
	} else if (event.key === 'p'){
		deleteClass();
		document.body.classList.add('col-4');
	}else if (event.key === 'b'){
		deleteClass();
	}
}

function deleteClass(){
	document.body.classList = '';
}
