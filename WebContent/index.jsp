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
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous" />
</head>
<body>
	<%
		verificaLogin log = new verificaLogin();
		String sessao = (String) session.getAttribute("sessao");
		if (sessao == "true") {
			session.setAttribute("sessao", "true");
			log.setVerificador("null");
		} else if (sessao == "adm") {
			session.setAttribute("sessao", "adm");
			log.setVerificador("null");
		}
	%>

	<!-- MOBILE FIRST -->
	<nav class="navbar navbar-expand-md" id="inicio">
		<a href="index.jsp"><img id="img-chatbot-menu"
			src="images/logo/art-sem_sombra-v3.png"
			alt="[Assistente Virtual BubbleBee]"></a> <a class="navbar-brand"
			href="index.jsp">BubbleBee</a>
		<button class="navbar-toggler nav-btn" type="button"
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
				<li class="nav-item"><a class="nav-link" href="duvidas.jsp"><i
						class="icon-menu fas fa-bookmark"></i>Dúvidas frequentes</a></li>
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
						Heyy !! obrigado por utilizar nosso serviço <br /> espero que
						tenha gostado e tido uma otima experiencia. Volte Sempre!!
					</p>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- DESTAQUE CONTEUDO -->
	<main> <!-- <div id="conteudo"> --> <!-- <div class="conteudo_imagem"> -->
	<article class="conteudo_imagem">
		<div class="container-fluid content-img-destaque">
			<div class="row">
				<div class="col-md-6">
					<img id="img-chatbot" src="images/logo/art-sombra-v3.png"
						alt="[Assistente Virtual BubbleBee]"
						title="Assistente Virtual BubbleBee">
				</div>
				<div class="destaque_bee col-md-6">
					<p class="conteudo_frase">
						Olá<%if(log.getNome()!=null){out.print(" "+log.getNome());};%>, sou <span id="conteudo_special">BubbleBee!</span>
					</p>
					<p class="conteudo_frase_bee">Uma plataforma desenvolvida para
						auxiliar as pessoas que estejam com dúvidas relacionadas a
						Português, Matemática e Algoritmos. Venha tirar suas dúvidas!</p>
					<a class="btn-main-amarelo" href="chatbot.jsp"><i
						class="icon_menu_item fas fa-play"></i>Experimente agora!</a>
				</div>
			</div>
		</div>
	</article>
	<!-- </div> --> <!-- </div> -->
	<article>
		<div id="conteudo_destaque">
			<h2>Conhecimento? Aqui e agora!</h2>
			<p>Veja alguns dos benefícios ao utilizar o sistema de
				assistência virtual:</p>
		</div>
	</article>

	<section class="menu">
		<div class="row">
			<article class="menu_item">
				<h4>
					<i class="fas fa-comments"></i>Comunicação
				</h4>
				<p>Interaja com o assistente virtual de forma simples! O
					BubbleBee foi idealizado para se comunicar exclusivamente com você.
					Sinta-se livre e comunique-se!</p>
			</article>
			<article class="menu_item">
				<h4>
					<i class="fas fa-bolt"></i>Velocidade
				</h4>
				<p>Experimente a ferramenta que identifica suas dúvidas e te dá
					respostas instantâneas, de forma ágil e eficiente, tudo para o seu
					APRENDIZADO!</p>
			</article>
		</div>
		<div class="row">
			<article class="menu_item">
				<h4>
					<i class="fas fa-book"></i>Conhecimento
				</h4>
				<p>Decole o seu conhecimento interagindo com o BubbleBee, que
					fornece uma assistência simples e fácil! Vamos ajudá-lo!</p>
			</article>
			<article class="menu_item">
				<h4>
					<i class="fas fa-laptop-code"></i>Tecnologia
				</h4>
				<p>Utilizamos novas tecnologias, como Inteligência Artificial
					voltada a criação do chatbot BubbleBee, seu assistente virtual!</p>
			</article>
		</div>
	</section>
	<div class="conteudo-robo">
		<a class="btn-main-amarelo btn-home" href="chatbot.jsp"><i
			class="icon_menu_item fas fa-play"></i>Experimente agora!</a>
	</div>

	</main>
	<!-- RODAPE -->

	<hr>
	<footer class="footer_main">
		<div class="container">
			<p>“A tecnologia move o mundo.” - Steve Jobs</p>
			<p>BubbleBee - &copy; Todos os direitos reservados.</p>
			<a href="#inicio" class="btn"><i class="fas fa-arrow-circle-up"></i></a>
		</div>
	</footer>
	<!-- /.RODAPE -->

	<!-- Bootstrap -->
	<%
		String parm = (String) request.getParameter("despedida");
	%>

	<script type="text/javascript" src="scripts/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/jquery.mask.js"></script>
	<%
		if (parm != null) {
	%>
	<script>
		$(document).ready(function() {
			$('#exampleModalCenter').modal('show')

		});
	</script>
	<%
		}
		;
	%>
</body>
</html>
