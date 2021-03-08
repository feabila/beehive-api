<%@page import="br.com.fiap.beans.verificaLogin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>BubbleBee Chatbot</title>
    <link rel="shortcut icon" href="images/favi.png" />

    <!-- CSS links -->
    <!-- <link rel="stylesheet" href="../css/reset.css" /> -->
    <link rel="stylesheet" href="style/bootstrap/css/bootstrap.min.css" />
    <!-- <link rel="stylesheet" href="../css/style.css" /> -->
    <link rel="stylesheet" type="text/css" href="style/chat.css" />
   <!--  <link rel="stylesheet" type="text/css" href="style/main.css" /> -->
    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
    <%
	String sessao = (String) session.getAttribute("sessao");
    verificaLogin log = new verificaLogin();

	if (sessao == "true") {
		session.setAttribute("sessao", "true");

	} else if (sessao == "adm") {
		session.setAttribute("sessao", "adm");

	} else {
		response.sendRedirect("index.jsp");
	}
    %>
  </head>
  <body>
  
  	<div id="nav-menu" class="flex text-center">
      <a href="../index.html"
        ><img
          id="img-chatbot-menu"
          src="images/logo/art-sem_sombra-v3.png"
          alt="[Assistente Virtual BubbleBee]"
      /></a>
      <h2 class="title">BubbleBee</h2>
    </div>
    <div class="chat-container">
      
    </div>
    <div class="row justify-content-center ml-0" id="fieldSend">
      <input
        type="text"
        tabindex="1"
        id="question"
        name="question"
        class="col-lg-8 col-md-8 field"
        placeholder="Digite sua pergunta ..."
      />
      <button class="btn-ripple btn-chat " id="sendQuestion">
        <i class="fas fa-arrow-right"></i>
      </button>
      <button class="btn-ripple btn-chat entire-border round" id="recordButton">
        <i class="fas fa-microphone"></i>
      </button>
      <button class="btn-ripple btn-chat entire-border round invisible" id="stopButton">
        <i class="fas fa-times"></i>
      </button>
      
    </div>
    
    <script src="https://cdn.rawgit.com/mattdiamond/Recorderjs/08e7abd9/dist/recorder.js"></script>
    <!-- Para a versão dois utilizar o script main.js -->
    <script type="text/javascript" src="scripts/assistant.js"></script>
    <script type="text/javascript" src="scripts/tts.js"></script>
    <script type="text/javascript" src="scripts/stt.js"></script>
    <script>
      window.onload = function() {
        //callBot("");
        createMessage("Olá <%if(log.getNome()!=null){out.print(log.getNome());};%> meu nome é BubbleBee, estou aqui para te ajudar em tudo que for relacionado a algoritmos >_-", "bot");
      };
    </script>
  </body>
</html>
