<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page session="true"  %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<title> utenteLoggato </title>
</head>
<body style="margin: 50px; padding-top: 30px;">
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	  <a class="navbar-brand" href="#">StyleOut</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav">
	      <li class="nav-item">
	      <c:if test="${ utenteLoggato == null}">
	        <a class="nav-link" href="login">Login</a>
	       </c:if>
	      </li>
	      <li class="nav-item">
	      <c:choose>
	      	<c:when test="${ utenteLoggato == null}">
	      		<a class="nav-link" href="registrazione">Registrazione</a>
	      	</c:when>
	      	<c:when test="${ utenteLoggato.mail == 'admin@gmail.com'}">
	      		<span style="color: blue;">admin</span>
	      	</c:when>
	      	<c:otherwise>
	      		user
	      	</c:otherwise>
	      </c:choose>
	        
	      </li>
	     </ul>
	      <c:choose>
		    <c:when test="${ utenteLoggato != null}">  
		        <ul class="navbar-nav" style="position: absolute; left: 40%;">
						
					<c:choose>
						<c:when test="${ utenteLoggato.mail == 'admin@gmail.com'}">
						  <li class="nav-item dropdown">
					        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					          testa web-app
					        </a>
						        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						          	<a class="dropdown-item" href="inserimentoVestito">inserimento Vestito</a>
						       		<div class="dropdown-divider"></div>
					        	</div>
					      </li>
							<li class="nav-item">
								<a class="nav-link"  href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">controllo Utenza</a>
					 		</li>
						</c:when>
						<c:otherwise>
							<a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					          il mio armadio
					        </a>
							<li class="nav-item">
						        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="inserimentoVestito">inserimento Vestito</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="stampaVestiti">elenco Vestiti</a>
								</div>
							</li>
						</c:otherwise>
					</c:choose>	   
		    	</ul>
		    	<ul class="navbar-nav ml-auto">
					<li class="nav-item" ">
				    	<a class="nav-link" href="paginaLoggato">${ utenteLoggato.nome }</a>
				    </li>
					<li class="nav-item">
						<a class="nav-link" href="#" style="padding: 0px;">
							<button style="padding-top: 7px; padding-bottom: 7px; height: 100%;" class="btn btn-primary" id="btnLogout" onclick="location.href='logoutUtente'" >LOGOUT</button>
						</a>
					</li>
		    	</ul>
	     	 </c:when>
	      	<c:otherwise>
	      		<ul class="navbar-nav ml-auto">
					<li class="nav-item" ">
				    	<a class="nav-link" href="login">effettua login</a>
				    </li>
		    	</ul>
	      	</c:otherwise>
	      </c:choose>
	  </div>
	</nav>
	<div class="container">
	
	  <div class="row">
	    <div class="col-sm">
	     <h4 style="text-transform: uppercase;">profilo di ${ utenteLoggato.nome }</h4>
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	    </div>
	  </div>
	    
	  <div class="row">
	    <div class="col-sm">
	    <br>
	   		residenza : <mark>${ utenteLoggato.residenza }</mark>
	   		<br><br>
	   		mail : <mark>${ utenteLoggato.mail }</mark>
<!-- 	   		<br><br> -->
	   		<!-- password : <mark>${ utenteLoggato.passwordUtente }</mark> -->
	   		<br><br>
	   		nome : <mark>${ utenteLoggato.nome }</mark>
	   		<br><br>
	   		cognome : <mark>${ utenteLoggato.cognome }</mark>
	    </div>
	    <div class="col-sm">
	    	
	    </div>
	    <div class="col-sm"align="right">
	    </div>
	  </div>
	  <br>
	</div>

  	<br>
  	
  	<br><br>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  	
</body>
</html>