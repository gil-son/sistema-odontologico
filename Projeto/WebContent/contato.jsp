<!DOCTYPE html>
<html lang="pt_BR">
<jsp:include page="canceladorConfirme.jsp" />
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Contato</title>

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
    		border-color: black;
    		width: 50;
    		margin: auto;
    		padding: 1em;
    		border-radius: 10px;
		}
		.dropbtn {
		background-color:#4C4C4C;
  		 color: #A6A6A6;
  		 padding: 15px;
	     padding-top: 0px;
		 padding-left:5px; 
	 	 font-size: 16px;
  		 border: none;
		 width: 100%;
    	 height: 36px !important;
		}
		
		.dropdown {
 		 position: relative;
 		 display: inline-block;
		}
		
		.dropdown-content {
 		 display: none;
  		position: absolute;
 		 background-color: #f1f1f1;
 		 min-width: 160px;
 		 box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
 		 z-index: 1;
		}	
		.dropdown-content a {
 		 color: black;
  		padding: 12px 16px;
  		text-decoration: none;
  		display: block;
		}
		.dropdown-content a:hover {background-color: #ddd;}
		.dropdown:hover .dropdown-content {display: block;}
		.dropdown:hover .dropbtn {background-color: #4C4C4C;}

   </style>
</head>

<body>

	
	<div class="container fluid">
		<div id="vermelho" class="col-sm-12">
		<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container">
      <img src="img/newlogo3.png"><a class="navbar-brand" href="#">&nbsp CORAÇÕES</a>
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
            <a class="nav-link" href="agenda.jsp">Agenda</a>
          </li>
          <li>
          <div class="dropdown">
            <button class="dropbtn">CADASTRE-SE</button>
          
            <div class="dropdown-content">
              <a href="cadastroUsuario.jsp">Cliente</a>
              <a href="cadDentista.jsp">Dentista</a>
          </div>
        </div>
      </li>
          <li class="nav-item">
            <a href="login.jsp" class="nav-link">Entrar</a>
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
			 	<h1 class="titulo">Fale conosco</h1>
			 	<hr/>

			 	<form method="get" action=""><!-- pagina pra redirecionar-->

			 		Nome:<br/>
			 		<input type="text" name="nomeCli" maxlength="30" placeholder="Digite seu nome" size="50"/>
			 		<hr/>
			 		
			 		Email:<br/>
			 		<input 	type="text" name="emailCli" maxlength="30" placeholder="Digite seu email" size="50"/>
			 		<hr/>

			 		Assunto:<br/>
			 		<input type="text" name="assunto" maxlength="40" placeholder="Digite o assunto do contato" size="50"/>

			 		Motivo:
			 		<select>
			 			<option selected>----Selecione----</option>
			 			<option value="reclamacao">Reclamaï¿½ï¿½o</option>
			 			<option value="elogio">Elogio</option>
			 			<option value="contato">Contato</option>
			 		</select>
			 		<hr/>
			 		Mensagem:
			 		<br/>

			 		<textarea id="mensagem" name="msgContato" rows="10" cols="90">
				</textarea>

					<br/>
					<button type="submit">Enviar email</button>
					<button type="reset">Limpar Dados</button>
					
			 	</form>
				<!-- Fim da ï¿½rea editï¿½vel-->				
				
			 </div>
		 </div>
			  <section>
							  <div class="container">
				  <div class="row align-items-center">
					<div class="col-lg-6 order-lg-2">
					  <div class="p-5">
						<a href="https://www.google.com.br/maps/place/Universidade+Cidade+de+Sï¿½o+Paulo+-+UNICID+-+Bloco+Alfa/@-23.5356673,-46.5601771,17z/data=!4m5!3m4!1s0x94ce5ef14dffb3d9:0x8d65b82df4aab92c!8m2!3d-23.5359197!4d-46.5596777" target="_blank">
							<img class="img-fluid rounded-circle" src="img/localizacao.png" alt=""></a>
					  </div>
					</div>
					<div class="col-lg-6 order-lg-1">
					  <div class="p-5">
						<h2 class="display-4">Telefones e Redes Sociais</h2>
						<ul>
							<li>Telefone: (XX)XXXXX-XXXX</li>
							<a href="https://web.facebook.com/?_rdc=1&_rdr" target="_blank"><li>Facebook</li></a>
							<a href="https://twitter.com/?lang=pt-br" target="_blank"><li>Twitter</li>
							<a href="https://www.instagram.com" target="_blank"><li>Instagram</li>
						</ul>
						
					  </div>
					</div>
				  </div>
				</div>		
			  </section>

				 </div>
		 	</div>
		 <div class="row">
			 <div id="verde" class="col-sm-12"></div>
		 </div>
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

  </body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

  <!-- Bootstrap core JavaScript -->
				
				
				
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
