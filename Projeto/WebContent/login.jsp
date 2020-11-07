<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Entrar</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/one-page-wonder.min.css" rel="stylesheet">
	
	<!-- CSS que pode mexer-->
  <link rel="stylesheet" type="text/css" href="css/estilo.css"/>
	
	<!--Icones de Redes Sociais-->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <style type="text/css">
   	form {
    		    border: 3px solid #ccc;
    			border-color: #000;
    			width: 300px;
                background: linear-gradient(gray,white);
    			margin: auto;
    			padding: 1em;
   				border-radius: 10px;
		}
	   
	   
	   
   </style>
</head>

<body>

	
	<div class="container fluid">
		<div id="vermelho" class="col-sm-12">
		<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container">
      <img src="img/newlogo3.png"><a class="navbar-brand" href="#">&nbsp CORAÇÕ•ES</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
		<li class="nav-item">
            <a class="nav-link" href="index.jsp">Início</a>
         </li>
		<li class="nav-item">
            <a class="nav-link" href="sobre.jsp">Sobre nós</a>
         </li>
		<li class="nav-item">
            <a class="nav-link" href="contato.jsp">Contato</a>
          </li>
		  <li class="nav-item">
            <a class="nav-link" href="calendario.jsp">Agenda</a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Entrar</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
		</div>
	</div>
	
	 <div class="container fluid">
		 <div class="row">
	 	  	<div id="preto" class="col-sm-12">
			 	
				<!-- Inï¿½cio da ï¿½rea editï¿½vel-->
			 	<h2 class="titulo">Entrar <% 
            	if (session.getAttribute("confirme") != null)
            		out.write(""+session.getAttribute("confirme")); 
            	%></h2>
		<center>
				<form method="post" action="LoginServlet"><!-- colocar aqui o nome da pagina -->

				<input type="hidden" name="pageId" value="loginPage"/>
			<font size="4" face="Sans-serif">
			Tipo de login:<br/>
			<input type="text" name="tipoLogin" placeholder="1 = Usuário 2 = Dentista" maxlength="30" required/>
			<hr/>
			Login:<br/>
			<input type="text" name="login" maxlength="30" required/>
			<hr/>
			Senha:<br>
			<input type="text" name="senha" maxlength="30" placeholder="Senha" required/>
			<br/>
			<a href="recupSenha.html"><font size="2">Esqueceu sua senha?</font></a><br/>
			<a href="cadastroUsuario.html"><font size="2">Não possui login? Cadastre-se</font></a><br/>

			<hr/>

		
				<input type="submit" value="Logar"/>
				<input type="reset" value="Limpar"/>
			
		</font>
		</form>
			</center>
				<!-- Fim da ï¿½rea editï¿½vel-->				
				
			 </div>
		 </div>
				 
				 
				 </div>
		 	
		 <div class="row">
			 <div id="verde" class="col-sm-12"></div>
	</div>
	  
	 <footer class="py-5 bg-black">
    
    	<div class="container">
	
      	<h2>Redes Sociais</h2>

	<!-- Icones das Redes Sociais -->
		<a href="https://facebook.com" target="_blank" class="fa fa-facebook"></a>|
		<a href="https://twitter.com/?lang=pt" target="_blank"  class="fa fa-twitter"></a>|
		<a href="https://gmail.com/mail/help/intl/pt_pt/about.html" target="_blank"  class="fa fa-google"></a>|
		<a href="https://br.linkedin.com/" target="_blank"  class="fa fa-linkedin"></a>|
		<a href="https://youtube.com" target="_blank"  class="fa fa-youtube"></a>|
		<a href="https://instagram.com"  target="_blank"  class="fa fa-instagram"></a>
    
	  </div>
	  
  </footer>
	  		
	  
	  

    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	
	  <script src="vendor/jquery/jquery.min.js"></script>
  	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

</html>
