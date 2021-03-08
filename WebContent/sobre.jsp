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

	<h2 class="title">
		<span>Grupo BubbleBee</span>
	</h2>
	<!-- CONTEUDO -->
	<section class="menu_sobre">
		<a
			href="https://br.linkedin.com/in/emerson-vitorio-de-oliveira-237649bb"
			target="_blank" alt="[Linkedin Emerson Vitorio]"
			title="Linkedin Emerson Vitorio">
			<article class="menu_item menu_item_sobre">
				<h3>
					<i class="fab fa-linkedin"></i>Emerson Vitório
				</h3>
				<p>Gestor de Projetos</p>
			</article>
		</a> <a href="https://br.linkedin.com/in/felipe-abila-a3778b159"
			target="_blank" alt="[Linkedin Felipe Abila]"
			title="Linkedin Felipe Abila">
			<article class="menu_item menu_item_sobre">
				<h3>
					<i class="fab fa-linkedin"></i>Felipe Abila
				</h3>
				<p>Desenvolvedor Front-End</p>
			</article>
		</a> <a href="https://www.linkedin.com/in/barbara-r0drigues/"
			target="_blank" alt="[Linkedin Bárbara Rodrigues]"
			title="Linkedin Bárbara Rodrigues">
			<article class="menu_item menu_item_sobre">
				<h3>
					<i class="fab fa-linkedin"></i>Bárbara Rodrigues
				</h3>
				<p>Infraestrutura</p>
			</article>
		</a> <a href="https://br.linkedin.com/in/gabrielsdiogo" target="_blank"
			alt="[Linkedin Gabriel Diogo]" title="Linkedin Gabriel Diogo">
			<article class="menu_item menu_item_sobre">
				<h3>
					<i class="fab fa-linkedin"></i>Gabriel Diogo
				</h3>
				<p>Desenvolvedor Back-end</p>
			</article>
		</a> <a
			href="https://br.linkedin.com/in/henrique-de-souza-maga%C3%B1a-a16263147"
			target="_blank" alt="[Linkedin Henrique Magaña]"
			title="Linkedin Henrique Magaña">
			<article class="menu_item menu_item_sobre">
				<h3>
					<i class="fab fa-linkedin"></i>Henrique Magaña
				</h3>
				<p>Projetista de Banco de Dados</p>
			</article>
		</a>
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
	<script>
		$(document).ready(function() {
			let tel = $('#tel  ');
			let cel = $('#cel');
			tel.mask('(00)0000-0000');
			cel.mask('(00)00000-0000');
		})
	</script>
</body>
</html>
