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
		String sessao = (String) session.getAttribute("sessao");
		if (sessao == "true") {
			session.setAttribute("sessao", "true");

		} else if (sessao == "adm") {
			session.setAttribute("sessao", "adm");

		}
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
	<div class="clear"></div>

	<!-- DESTAQUE CONTEUDO -->
	<h2 class="title">Dúvidas</h2>
	<section class="card">
		<div class="tab">
			<input id="tab-one" type="checkbox" name="tabs" /> <label
				for="tab-one">O que é um assistente virtual ?</label>
			<div class="tab-content">
				<p>Assistente Virtual é um robô, desenvolvido com Inteligência
					Artificial, com o objetivo de ajudar as pessoas em diversos
					assuntos. Esperamos te ajudar!</p>
			</div>
		</div>
		<div class="tab">
			<input id="tab-two" type="checkbox" name="tabs" /> <label
				for="tab-two">Como usar o BubbleBee ?</label>
			<div class="tab-content">
				<p>Inicie uma conversa em tempo real com Assistente Virtual, a
					fim de tirar todas dúvidas com base nos temas abordados!</p>
				<p>
					Para mais informações! Vá para<a href="chatbot.jsp"> a página
						do BubbleBee, nosso assistente virtual, </a> que possui informações
					necessárias para começar agora! Aproveite agora!
				</p>
			</div>
		</div>

		<div class="tab">
			<input id="tab-four" type="checkbox" name="tabs" /> <label
				for="tab-four">Posso acessar de qualquer lugar ?</label>
			<div class="tab-content">
				<p>
					Você poderá utilizar a ferramenta em todo lugar: <strong>celular</strong>,
					<strong>tablet</strong>, <strong>computador</strong>, entre outros.
					Sendo necessário apenas possuir um navegador com internet!
				</p>
			</div>
		</div>
		<div class="tab">
			<input id="tab-five" type="checkbox" name="tabs" /> <label
				for="tab-five">Onde posso enviar feedbacks relacionados ao
				serviço ?</label>
			<div class="tab-content">
				<p>Você pode Deixar no campo de avaliação que é exibido após uma
					conversa com o Bubblebee !!</p>
			</div>
		</div>
	</section>
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
	<script type="text/javascript" src="scripts/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/jquery.mask.js"></script>
</body>
</html>
