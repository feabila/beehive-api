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
    <link
    rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
    crossorigin="anonymous"
    />
  </head>
  <body>
    <!-- MOBILE FIRST -->
    <nav class="navbar navbar-expand-md" id="inicio">
            <a href="index.jsp"><img id="img-chatbot-menu" src="images/logo/art-sem_sombra-v3.png" alt="[Assistente Virtual BubbleBee]"></a>
        <a class="navbar-brand" href="index.jsp">BubbleBee</a>
        <button class="navbar-toggler nav_btn" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" >
            <i class="fas fa-bars icon-menu"></i>
        </button>
      <div class="collapse navbar-collapse nav-menu navbar-right" id="navbarNav">
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="duvidas.jsp"
              ><i class="icon-menu fas fa-bookmark"></i>Dúvidas frequentes</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="sobre.jsp"
              ><i class="icon-menu fas fa-question-circle"></i>Sobre</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="chatbot.jsp"
              ><i class="icon-menu fas fa-play"></i>Começar BubbleBee</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp?status=false"
              ><i class="icon-menu fas fa-id-card"></i>Cadastro/Login</a
            >
          </li>
        </ul>
      </div>
    </nav>

    <!-- DESTAQUE CONTEUDO -->
    <section id="cad">
      <form id="form-cadastro" action="index.jsp">
        <h1 class="title">Recuperação de Senha</h1>
        <div class="question">
          <input type="email" name="email" placeholder="ex. seuemail@email.com" required />
          <label>E-mail</label>
        </div>
        <button>Redefinir Senha</button>
      </form>
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
    $(document).ready(function(){
      let cpf= $('#cpf');
      let data_nasc= $('#data_nasc');
      cpf.mask('000.000.000-00');
      data_nasc.mask('00/00/0000');
    })
    </script>
  </body>
</html>
