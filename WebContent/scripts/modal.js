let bot = document.getElementById("iniciabot");

bot.addEventListener("click", function() {
	window.open('chat.jsp', 'janela', 'width=1000, height=630, top=90%, left=180%, scrollbars=no, status=no, toolbar=0, location=no, menubar=no, resizable=no, fullscreen=no, copyhistory=no');
	$('#survey').modal('show')
});

