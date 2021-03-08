<%@page import="br.com.fiap.beans.verificaLogin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>BubbleBee - Comece agora seu assistente virtual!</title>
<link rel="shortcut icon" href="images/favi.png" />

<!-- CSS links -->
<link rel="stylesheet" href="style/reset.css" />
<link rel="stylesheet" href="style/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="style/style.css" />
<link rel="stylesheet" href="style/stars.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous" />
</head>
<body>
	<%
		String sessao = (String) session.getAttribute("sessao");
		if (sessao == "true") {
			session.setAttribute("sessao", "true");

		} else if (sessao == "adm") {
			session.setAttribute("sessao", "adm");

		}
		verificaLogin log = new verificaLogin();
	%>
	
	
	<!-- MOBILE FIRST -->
	<nav class="navbar navbar-expand-md" id="inicio">
		<a href="index.jsp"><img id="img-chatbot-menu"
			src="images/logo/art-sem_sombra-v3.png"
			alt="[Assistente Virtual BubbleBee]"></a> <a class="navbar-brand"
			href="index.jsp">BubbleBee</a>
		<button class="navbar-toggler nav_btn" type="button"
			data-toggle="collapse" data-target="#navbarNav"
			aria-controls="navbarNav" aria-expanded="false"
			aria-label="Toggle navigation">
			<i class="fas fa-bars icon-menu"></i>
		</button>
		<div class="collapse navbar-collapse nav-menu navbar-right"
			id="navbarNav">
			<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
				<%
					if (sessao == "adm") {
				%>
				<li class="nav-item"><a class="nav-link" href="dashboard.jsp"><i
						class="icon-menu fas fa-chart-line"></i>Dashboard</a></li>
				<%
					}
				%>
				<li class="nav-item active"><a class="nav-link"
					href="duvidas.jsp"><i class="icon-menu fas fa-bookmark"></i>Dúvidas
						frequentes</a></li>
				<li class="nav-item"><a class="nav-link" href="sobre.jsp"><i
						class="icon-menu fas fa-question-circle"></i>Sobre</a></li>
				
				<li class="nav-item"><a class="nav-link"
					href="<%if (sessao == null) {
				out.print("login.jsp");
			} else {
				out.print("deslogar.jsp");
			}%>"><i
						class="icon-menu fas fa-id-card"></i> <%
 	if (sessao != null) {
 		out.print("Logout");
 	} else {
 		out.print("Cadastro/Login");
 	}
 %></a></li>
			</ul>
		</div>
	</nav>
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content modali">
				<div class="modal-header">
					<h4 class="modal-title modali-txt" id="exampleModalLongTitle">
						Beehive!</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true" class="modali-span">&times;</span>
					</button>
				</div>

				<div class="modal-body modali-txt">
					<img src="images/logo/art-sombra-v3.png" alt="" class="modali-img" />
					<p>
						Heyy !! Você precisa fazer Login para usar o BubbleBee <br />
					</p>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<div
      class="modal fade"
      id="survey"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalCenterTitle"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modali">
          <div class="modal-header">
            <h4 class="modal-title modali-txt" id="exampleModalLongTitle">
              Beehive!
            </h4>
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true" class="modali-span">&times;</span>
            </button>
          </div>

          <div class="modal-body modali-txt">
            <img
              src="images/logo/art-sombra-v3.png"
              alt=""
              class="modali-img"
            />
            <p>
                <h6>Suas perguntas fora respondidas corretamente ?</h6>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="inputGroupSelect01">Opções</label>
                    </div>
                    <select class="custom-select" id="pergunta01">
                      <option selected>Escolha uma das opções..</option>
                      <option value="1">Sim - foram respondidas corretamente</option>
                      <option value="2">Não - não foram respondidas corretamente</option>
                      <option value="3">Foram respondidas parcialmente</option>
                    </select>
                  </div>
            </p>
            <p>
              <form action="https://desystem.tech" method="get" class="campo-invisivel" id="campohide">
                  <textarea rows="4" cols="50" placeholder="Deixe aqui as perguntas incorretas separadas por virgula.." id="campo1"></textarea>
              </form>
                
            </p>
            <p>
                <h6>Gostaria de deixar algum comentário ou sugestão ?</h6>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <label class="input-group-text" for="pergunta02">Opções</label>
                    </div>
                    <select class="custom-select" id="pergunta02">
                      <option selected>Escolha uma das opções..</option>
                      <option value="1">Sim</option>
                      <option value="2">Não</option>
                      
                    </select>
                  </div>
            </p>
            <p>
              <form action="https://desystem.tech" method="get" class="campo-invisivel" id="campohide02">
                  <textarea rows="4" cols="50" placeholder="Deixe aqui seu comentário ou sugestão.." id="campo2"></textarea>
              </form>
                
            </p>
          <p>
              <h6>Por favor avalie nosso atendimento...</h6>
            
            <fieldset class="rating">
              <input type="radio" id="star5" name="rating" value="5" /><label
                class="full"
                for="star5"
                title="Exelente! - 5 estrelas"
              ></label>

              <input type="radio" id="star4" name="rating" value="4" /><label
                class="full"
                for="star4"
                title="Muito bom - 4 estrelas"
              ></label>

              <input type="radio" id="star3" name="rating" value="3" /><label
                class="full"
                for="star3"
                title="Mediano - 3 estrelas"
              ></label>

              <input type="radio" id="star2" name="rating" value="2" /><label
                class="full"
                for="star2"
                title="Ruim - 2 estrelas"
              ></label>

              <input type="radio" id="star1" name="rating" value="1" /><label
                class="full"
                for="star1"
                title="Muito Ruim - 1 estrela"
              ></label>
            </fieldset>
            
            
          </p>
          <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <button id="enviar" class="btn btn-success" onclick="javascript:enviadados()">Enviar</button>
            </div>
              
          </div>
          
          </div>
          <div class="modal-footer"></div>
        </div>
      </div>
    </div>
	<!-- DESTAQUE CONTEUDO -->
	<h2 class="title_sobre title">
		<span>Converse já com o BubbleBee!</span>
	</h2>
	
	<section class="menu menu_sobre">
		
		<article class="menu_item_chat enabled_chat">
			<h3>
				<i class="fas fa-tools"></i>Algoritmo
			</h3>
			
	</section>

	<article class="container-fluid">
		<div class="container">
			<div class="row">
				<div id="img_chatbot_cont" class="col-md-6">
					<img id="img-chatbot" src="images/logo/art-sombra-v3.png"
						alt="[Imagem Chatbot BubbleBee]" title="Imagem Chatbot BubbleBee">
				</div>
				<div class="destaque_chatbot col-md-6">
					<h3 class="title title_chatbot">Prazer, sou BubbleBee! Estou
						aqui para te ajudar!</h3>
					<p>Inicie a qualquer momento uma conversa com o BubbleBee, seu
						assistente virtual, para tirar suas dúvidas! Comece agora!</p>
					<a class="btn-main-amarelo"
						<%if (sessao != null) {
				out.print("href='#' id='iniciabot'");

			} else {
				out.print("href='javascript:ativa()'");
			}%>><i
						class="icon_menu_item fas fa-play"></i>Comece agora!</a>
				</div>
			</div>
		</div>
	</article>

	<!-- RODAPE -->
	<hr>
	<footer class="footer_main">
		<div class="container">
			<p>“A tecnologia move o mundo.” - Steve Jobs</p>
			<p>BubbleBee - &copy; Todos os direitos reservados.</p>
			<a href="#inicio" class="btn"><i class="fas fa-arrow-circle-up"></i></a>
		</div>
	</footer>
	
	<form  action="avalia" method="post" id="envia">

      <input type="hidden" name="perg1" id="perg1">
      <input type="hidden" name="resp1" id="resp1">
      <input type="hidden" name="perg2" id="perg2">
      <input type="hidden" name="resp2" id="resp2">
      <input type="hidden" name="star" id="star">
      <input type="hidden" name="iduser" id="iduser" value="<% out.print(log.getId_usuario());%>">
    </form>
	<!-- /.RODAPE -->

	<!-- Bootstrap -->
	
	<script type="text/javascript" src="scripts/modal.js"></script>
	<script type="text/javascript" src="scripts/survey.js"></script>
	<script type="text/javascript" src="scripts/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/jquery.mask.js"></script>
	<script>
		
		function enviadados(){
			radioValue = $("input[name='rating']:checked").val();
			<!-- Normalização -->
			 	str = document.getElementById('campo1').value;
				parsed = str.normalize('NFD').replace(/([\u0300-\u036f]|[^0-9a-zA-Z,?,]\s)/g, '');
				
				<!-- Normalização-->
				str2 = document.getElementById('campo2').value;;
				parsed2 = str2.normalize('NFD').replace(/([\u0300-\u036f]|[^0-9a-zA-Z,?,]\s)/g, '');
				
			submita();
		}

		function ativa() {
			$('#exampleModalCenter').modal('show')
		}
	</script>
</body>
</html>
