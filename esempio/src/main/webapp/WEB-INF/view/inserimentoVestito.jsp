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
	      	<c:when test="${ utenteLoggato.mail == 'simo@simo'}">
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
					<li class="nav-item">
					<c:choose>
						<c:when test="${ utenteLoggato.mail == 'simo@simo'}">
						  <li class="nav-item dropdown">
					        <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					          testa web-app
					        </a>
					        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
					          <a class="dropdown-item" href="inserimentoVestito">inserimento Vestito</a>
					          <div class="dropdown-divider"></div>
					        </div>
					      </li>
							</li>
							<li>
							<a class="nav-link" href="">controllo Utenza</a>
						</c:when>
						<c:otherwise>
							<a class="nav-link" href="inserimentoVestito">il mio armadio</a>
						</c:otherwise>
					</c:choose>
				    </li>
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
	     <h4>INSERIMENTO VESTITO</h4>
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	    </div>
	  </div>
	    
	  <div class="row">
	    <div class="col-sm">
	   	<form id="formInserimentoVestito">
			<div class="form-group">
			  <label for="nomeUtente">colore</label>
			  <input type="text" class="form-control" id="coloreVestito" name="coloreVestito" aria-describedby="emailHelp" placeholder="inserisci colore">
			</div>
			<div class="form-group">
				<label for="cognomeUtente">tessuto</label>
				<input type="text" class="form-control" id="tessutoVestito" name="tessutoVestito" aria-describedby="emailHelp" placeholder="inserisci tessuto">
			</div>
		
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="checkbox"
					name="disponibilita" id="disponibilita" value="disponibile">
				<label class="form-check-label" for="inlineRadio1">disponibile</label>
			</div>
  		</form>
	    </div>
	    <div class="col-sm">
	    	
	    </div>
	    <div class="col-sm"align="right">
	    </div>
	  </div>
	  <br>
	  <div class="row">
	    <div class="col-sm">
	    	<button type="submit" class="btn btn-primary" id="btnAggiungiVestito" name="btnAggiungiVestito">aggiungi</button>	
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	     <span id="esitoOperazione" class="badge badge-pill badge-info">esito : </span>
	    </div>
	  </div>
	</div>

  	<br>
  	
  	<br><br>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  	
	<script type="text/javascript">
	</script>
	<script type="text/javascript">
	$('#btnAggiungiVestito').click((e) => {
		e.preventDefault();
		$.ajax({
			url: 'aggiungiVestito',
			method: 'post',
			data: $('#formInserimentoVestito').serialize()
		})
		.done((risultato) => {
				$('#esitoOperazione').append(risultato);
			function resettaTestoEsito(){
					$('#esitoOperazione').text("esito : ");
					$('#coloreVestito').val('');
					$('#tessutoVestito').val('');
				}
			setTimeout(resettaTestoEsito, 2500);
			console.log(risultato);
		});
	});
	</script>
</body>
</html>