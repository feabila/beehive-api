var btnGetVoice = document.querySelector("#getVoiceButton");
btnGetVoice.addEventListener("click", function(event) {
	event.preventDefault();
	var question = document.querySelector("#question");
	sendMessageToVoice(question.value);
	question.value = "";
});

function sendMessageToVoice(msg) {
	console.log(msg);
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "tts", true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if(xhr.status == 200) {
			// Codigo de sucesso
			deleteLoading();
			var blob = new Blob([xhr.response], {type : "audio/wav"});
			
			createAudioElement(blob,"audio-bot");
			console.log(blob);//gera o arquivo de audio BLOB
		}else{
			// Codigo de deu ruim!
			deleteLoading();
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	xhr.responseType = 'blob';
	var data = "question=" + msg;
	xhr.send(data);
	console.log(data);
}

function createAudioElement(blob, type) {
	
	var url = URL.createObjectURL(blob);
	var audio = document.createElement("audio");
	var div = document.createElement("div");
	audio.className=type;
	
	
	audio.controls = true;
	audio.src = url;
	
	div.appendChild(audio);
	
	var chat = document.querySelector(".chat-container");
	chat.appendChild(div);
	scrollDivDown(chat);
	
}


function createLoading(){
	load = document.createElement("div");
	load.className="bot typing-indicator";
	for (var i = 0; i < 3; i++) {
		var audio = document.createElement("span");
		load.appendChild(audio);
	}
	var chat = document.querySelector(".chat-container");
	chat.appendChild(load);
	scrollDivDown(chat);
}


function deleteLoading(){
	for (var i = 0; i < 3; i++) {
		load.remove();
	}
}







