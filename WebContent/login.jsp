<%@page import="br.com.acesso"%>
<%@page import="br.com.fiap.beans.verificaLogin"%>
<%@page import="br.com.fiap.beans.cadastroUsuario"%>
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
<!-- <link rel="stylesheet" href="style/reset.css" /> -->
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
			response.sendRedirect("index.jsp");

		} else if (sessao == "adm") {
			session.setAttribute("sessao", "adm");
			response.sendRedirect("index.jsp");
		}
	%>
	<%
		verificaLogin log = new verificaLogin();
		cadastroUsuario cad = new cadastroUsuario();
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
				<li class="nav-item active"><a class="nav-link"
					href="duvidas.jsp"><i class="icon-menu fas fa-bookmark"></i>Dúvidas
						frequentes</a></li>
				<li class="nav-item"><a class="nav-link" href="sobre.jsp"><i
						class="icon-menu fas fa-question-circle"></i>Sobre</a></li>
		
				<li class="nav-item"><a class="nav-link"
					href="login.jsp?status=false"><i
						class="icon-menu fas fa-id-card"></i>Cadastro/Login</a></li>
			</ul>
		</div>
	</nav>


	<!-- DESTAQUE CONTEUDO -->
	<section class="container-fluid" id="cad">
		<div class="row">
			<form class="col-md-4" id="form-cadastro" action="login"
				method="post">
				<h1 class="title">Entrar</h1>
				<div class="alert alert-danger alerta" role="alert" id="erro">
					<strong>Email ou Senha</strong> incorretos.
				</div>


				<div class="question">
					<input type="email" name="email"
						placeholder="ex. seuemail@email.com" required /> <label>E-mail*</label>
				</div>
				<div class="question">
					<input type="password" name="senha"
						placeholder="Mínimo 6 caracteres" minlength="6" required /> <label>Senha*</label>
				</div>
				<div class="row">
					<small class="col-sm-5">* Informações obrigatórias</small>
				</div>
				<button type="submit">Entrar</button>
			</form>
			<form class="col-md-5" id="form-cadastro" action="cad" method="post">
				<h1 class="title">Cadastrar</h1>
				<div id="alerta" class="alerta">
					<p>
						<strong>Parabens!!</strong> Seu cadastro foi concluido com sucesso
					</p>
				</div>
				<div id="falha" class="alerta">
					<p>
						<strong>Falha!!</strong> As senhas não se correspondem
					</p>
				</div>
				

				<div class="question">
					<input type="text" name="nome" placeholder="ex. Seu nome.."
						required /> <label>Nome*</label>
				</div>
				<div class="question">
					<input type="email" name="email"
						placeholder="ex. seuemail@email.com" required /> <label>E-mail*</label>
				</div>
				<div class="question">
					<input type="password" name="senha" id="senha"
						placeholder="Mínimo 6 caracteres" minlength="6" required /> <label>Nova
						senha*</label>
				</div>
				<div class="question">
					<input type="password" name="conf_senha" id="conf_senha"
						placeholder="Mínimo 6 caracteres" minlength="6" required /> <label>Confirme
						a senha*</label>
				</div>

				<div class="sexo">
					<p>GÊNERO:</p>
				</div>
				<div class="row">
					<div class="custom-control custom-radio custom-control-inline sexo-form">
						<input type="radio" id="customRadioInline1"
							name="sexo" class="custom-control-input" value="Masculino" /> <label
							class="custom-control-label" for="customRadioInline1" >Masculino</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="customRadioInline2"
							name="sexo" class="custom-control-input" value="Feminino"/> <label
							class="custom-control-label" for="customRadioInline2">Feminino</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="customRadioInline3"
							name="sexo" class="custom-control-input" value="Outros"/> <label
							class="custom-control-label" for="customRadioInline3">Outros</label>
					</div>
				</div>

				<div class="question">
					<input type="text" name="data_nasc" placeholder="ex. 99/99/9999"
						id="data_nasc" required /> <label>Data de Nascimento*</label>
				</div>
				<div class="question">
					<input type="text" name="cel" placeholder="ex. (99) 99999-9999"
						id="cel" required /> <label>Celular*</label>
				</div>
				<div class="row">
					<small class="col-sm-5">* Informações obrigatórias</small> <a
						class="col-sm text-right" href="forgot.jsp">Esqueceu a senha ?</a>
				</div>
				<button type="submit" id="cadastrar">Cadastrar</button>
			</form>
				
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
	<script type="text/javascript" src="scripts/cadastrar.js"></script>
	<script type="text/javascript" src="scripts/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/jquery.mask.js"></script>

	<script>
		$(document).ready(function() {
			let cpf = $('#cpf');
			let cel = $('#cel');
			let data_nasc = $('#data_nasc');
			cpf.mask('000.000.000-00');
			data_nasc.mask('00/00/0000');
			cel.mask('(00) 00000-0000');
		});
		
	</script>
	<%
		String x = cad.getStatus();
		
	%>
	<%
		if (x == "true") {
	%>
	<script>
		$(document).ready(function() {

			//$("#div1").fadeIn();
			$("#alerta").fadeIn("slow");
			setTimeout(function() {
	<%cad.setStatus("null");%>
		$("#alerta").fadeOut("slow");
			}, 3000);
			//$("#div3").fadeIn(3000);

		});
	</script>
	<%
		}else if(x == "senha"){	
	%>
	<script>
		$(document).ready(function() {

			//$("#div1").fadeIn();
			$("#falha").fadeIn("slow");
			setTimeout(function() {
				<%cad.setStatus("null");%>
		
			}, 3000);
			//$("#div3").fadeIn(3000);

		});
	</script>
	<%}; %>
	<%
		String y = log.getVerificador();
	%>

	<%
		if (y == "false") {
	%>
	<script>
		$(document).ready(function() {
			//$("#div1").fadeIn();
			$("#erro").fadeIn("slow");
			setTimeout(function() {
	<%log.setVerificador("null");%>
		$("#erro").fadeOut("slow");
			}, 3000);
			//$("#div3").fadeIn(3000);

		});
	</script>
	<%
		} else if (y == "true") {
			session.setAttribute("sessao", y);
	%>

	<script>
		$(document).ready(function() {
			window.location.href = "index.jsp";
		});
	</script>


	<%
		}else if (y == "adm"){
			session.setAttribute("sessao", y);
		
	%>
	<script>
		$(document).ready(function() {
			window.location.href = "index.jsp";
		});
	</script>
	
	<%} %>


</body>
</html>
