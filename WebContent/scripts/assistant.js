function scrollDivDown(div) {
  for (var i = 0; i < div.offsetHeight; i++) {
    //div.scrollTop++;
    div.scrollTop= div.scrollHeight--;
  }
  
  
  //div.scrollTop = div.scrollHeight - div.clientHeight;
}

function createMessage(message, type) {
  var chat = document.querySelector(".chat-container");
  var div = createDiv(message, type);
  chat.appendChild(div);
  scrollDivDown(chat);
 
}


function createDiv(text, type) {
	var div = document.createElement("div");
	div.classList.add("chat");
	if(type.split(" ").length > 1){
		type.split(" ").forEach((item) => {
			div.classList.add(item);
		})
	} else {
		div.classList.add(type);	
	}
	div.textContent = text;
	return div;
}
function sendQuestion(event) {
	stts=false;
  if (event.keyCode == 13 || event.type == "click") {
    event.preventDefault();
    var question = document.querySelector("#question");
    if (question.value == "") return;
    createMessage(question.value, "me");
    callBot(question.value);
    question.value = "";
  }
}

var btnSendQuestion = document.querySelector("#sendQuestion");
var fieldSendQuestion = document.querySelector("#question");
fieldSendQuestion.addEventListener("keypress", function(event) {
  sendQuestion(event);
});
btnSendQuestion.addEventListener("click", sendQuestion);

function callBot(msg) {
  if (msg == "") return;
  
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "v1", true);
  xhr.setRequestHeader(
    "Content-type",
    "application/x-www-form-urlencoded; charset=utf-8"
  );
  xhr.addEventListener("load", function() {
    if (xhr.status == 200) {
      // Codigo de sucesso
      var respostas = JSON.parse(xhr.responseText);
      respostas.forEach(function(resposta) {
    	  if(stts === true){
    		  sendMessageToVoice(resposta);
    	  }else{
    		  createMessage(resposta, "bot");
    		  console.log(stts);
    	  }
    	  
        
        
      });
    } else {
      // Codigo de deu ruim!
      console.log(xhr.status);
      console.log(xhr.responseText);
    }
  });
  var data = "question=" + msg;
  xhr.send(data);
}

let buttons = document.getElementsByClassName("btn-chat");
Array.prototype.forEach.call(buttons, function(b) {
  b.addEventListener("click", createRipple);
});
function createRipple(e) {
  var circle = document.createElement("div");
  this.appendChild(circle);
  var d = Math.max(this.clientWidth, this.clientHeight);
  circle.style.width = circle.style.height = d + "px";
  var rect = this.getBoundingClientRect();
  circle.style.left = e.clientX - rect.left - d / 2 + "px";
  circle.style.top = e.clientY - rect.top - d / 2 + "px";
  circle.classList.add("ripple");
  setTimeout(() => {
    this.removeChild(circle);
  }, 3000);
}
