let botn = document.getElementById("enviar");
let pergunta = document.getElementById("pergunta01");
let perguntadois = document.getElementById("pergunta02");
let campoum = document.getElementById("campohide");
let campodois = document.getElementById("campohide02");
let campo1 = document.getElementById("campo1");
let campo2 = document.getElementById("campo2");
let start  = document.getElementsByClassName('rating');
let radioValue;
let str;
let parsed;
let str2;
let parsed2;

let perg1= document.getElementById("perg1");
let resp1= document.getElementById("resp1");
let perg2= document.getElementById("perg2");
let resp2=document.getElementById("resp2");
let star = document.getElementById("star");
let id = document.getElementById("iduser");



function submita(){
	
	
	perg1.value= pergunta.value;

	resp1.value= parsed;

	perg2.value= perguntadois.value;

	resp2.value= parsed2;
	star.value= radioValue;

	$( "#envia" ).submit();
}



pergunta.addEventListener("change", function() {
  if (pergunta.value == 2) {
    campoum.classList.add("campo-visivel");
  }
  if (pergunta.value == 1) {
    campoum.classList.remove("campo-visivel");
  }

  if (pergunta.value == 3) {
    campoum.classList.add("campo-visivel");
  }

  console.log(pergunta.value);
});

perguntadois.addEventListener("change", function() {
  if (perguntadois.value == 1) {
    campodois.classList.add("campo-visivel");
  }
  if (perguntadois.value == 2) {
    campodois.classList.remove("campo-visivel");
  }

  console.log(perguntadois.value);
});

