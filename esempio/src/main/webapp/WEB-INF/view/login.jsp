<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

</head>
<body style="margin: 50px; padding-top: 30px;">

		<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	  <a class="navbar-brand" href="#">StyleOut</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">

	      <c:choose>
		    <c:when test="${ utenteLoggato != null}">
		    
		        <ul class="navbar-nav" style="position: absolute; left: 40%;">
					<li class="nav-item">
				    	<a class="nav-link" href="inserimentoVestito">inserimento vestito</a>
				    </li>
		    	</ul>
	     	 </c:when>
	      	<c:otherwise>
	      		<ul class="navbar-nav ml-auto">
					<li class="nav-item" >
				    	<a class="nav-link" href="login">login non effettuato</a>
				    </li>
		    	</ul>
	      	</c:otherwise>
	      </c:choose>
	  </div>
	</nav>
	
	<div class="container">
	  <div class="row">
	    <div class="col-sm">
	     <h4 style="text-transform: uppercase; border: 0px;">login</h4>
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	    </div>
	  </div>
	
	 
	 <div class="row">
	    <div class="col-sm">
	    	<form id="formLogin" action="loginUtente" method="post">	 
				<div class="form-group">
					<label for="mailUtente">Mail</label>
					<input type="email" class="form-control" id="mailUtente" name="mailUtente" aria-describedby="emailHelp" placeholder="inserisci email">
			  	</div>
				<div class="form-group">
				  <label for="passwordUtente">Password</label>
				  <input type="password" class="form-control" id="passwordUtente" name="passwordUtente" placeholder="inserisci Password">
				</div>
				<button type="submit" class="btn btn-primary" id="btnLogin">login</button>
  			</form>
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	    </div>
	  </div>
	  
	  <div class="row">
	    <div class="col-sm">
			
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	    	<span id="esitoOperazione" class="badge badge-pill badge-info">esito : ${ errore }</span>
	    </div>
	  </div>
	  
	 </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>	    	

</html>