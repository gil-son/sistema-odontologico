<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset='utf-8' />
<title>Insert title here</title>
	
<meta charset='utf-8' />


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





<link href='css/main.min.css' rel='stylesheet' />
<link href='css/main.min.css' rel='stylesheet' />
<script src='js/core/main.min.js'></script>
<script src='js/interaction/main.min.js'></script>
<script src='js/daygrid/main.min.js'></script>
<script src='js/core/locales/pt-br.js'></script>
 
 
 <style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
 
 
 <script>
 
 document.addEventListener('DOMContentLoaded', function () {
     var calendarEl = document.getElementById('calendar');

     var calendar = new FullCalendar.Calendar(calendarEl, {
         locale: 'pt-br',
         plugins: ['interaction', 'dayGrid'],
         //defaultDate: '2019-04-12',
         editable: true,
         eventLimit: true,
	      events: [
	        {
	          title: 'Agendado',
	          start: '2019-05-01T10:00:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-07T11:00:00',
	          
	        },
	        {
	          
	          title: 'Agendado',
	          start: '2019-05-09T16:00:00'
	        },
	        {
	          
	          title: 'Agendado',
	          start: '2019-05-16T16:00:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-30T16:30:00',
	          start: '2019-05-30T16:50:00',
	          start: '2019-05-30T17:30:00',
	         
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-12T10:30:00',
	          end: '2019-05-12T12:30:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-12T12:00:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-12T14:30:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-12T17:30:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-12T20:00:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-13T07:00:00'
	        },
	        {
	          title: 'Agendado',
	          start: '2019-05-28T16:00:00'
	        }
	      ]
	    });

	    calendar.render();
	  });
 
 </script>
 
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
 
<style>

            body {
                margin: 40px 10px;
                padding: 0;
                font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
                font-size: 14px;
            }

            #calendar {
                max-width: 900px;
                margin: 0 auto;
            }

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
           <div class="dropdown ">
            <button class="dropbtn">CADASTRE-SE</button>
          
            <div class="dropdown-content">
              <a href="cadastroUsuario.jsp">Cliente</a>
              <a href="cadDentista.jsp">Dentista</a>
          </div>
        </div>
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
			 	<h1 class="titulo"> Calendário de Agendamento</h1>
				
				
				 <div id='calendar'></div>
				
				
			 
				<!-- Fim da ï¿½rea editï¿½vel-->				
				
			 </div>
		 </div>
			 
		 
			  <section>
							  <div class="container">
				  <div class="row align-items-center">
					
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
</body>
</html>