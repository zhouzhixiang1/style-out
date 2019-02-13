<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="login">Login</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="registrazione">Registrazione</a>
	      </li>
	     </ul>
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
	     <h4 style="text-transform: uppercase; border: 0px;">registrazione</h4>
	    </div>
	    <div class="col-sm">
	    </div>
	    <div class="col-sm">
	    </div>
	  </div>  
	  
	  <div class="row">
	    <div class="col-sm">
	     	    	<form id="formRegistrazione">
	<div class="form-group">
	  <label for="nomeUtente">Nome</label>
	  <input type="text" class="form-control" name="nomeUtente" aria-describedby="emailHelp" placeholder="inserisci nome">
	</div>
	<div class="form-group">
		<label for="cognomeUtente">Cognome</label>
		<input type="text" class="form-control" name="cognomeUtente" aria-describedby="emailHelp" placeholder="inserisci cognome">
	</div>
	<div class="form-group">
		<label for="mailUtente">Mail</label>
		<input type="email" class="form-control" name="mailUtente" aria-describedby="emailHelp" placeholder="inserisci email">
  	</div>
  	<div class="form-group">
	 	<label for="residenzaUtente">Residenza</label>
	 	<input type="text" class="form-control" name="residenzaUtente" aria-describedby="emailHelp" placeholder="inserisci residenza">
  	</div>
	<div class="form-group">
	  <label for="passwordUtente">Password</label>
	  <input type="password" class="form-control" name="passwordUtente" placeholder="inserisci Password">
	</div>
	<button type="submit" class="btn btn-primary" id="btnAggiungi">aggiungi</button>
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
	    	<span id="esitoOperazione"></span>
	    </div>
	  </div> 
</div>


<span>${ nome }</span>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$('#btnAggiungi').click((e) => {
		e.preventDefault();
		$.ajax({
			url: 'aggiungiUtente',
			method: 'post',
			data: $('#formRegistrazione').serialize()
		})
		.done((risultato) => {
			$('#esitoOperazione').text(risultato);
			console.log(risultato);
		});
	});
	$('#btnLista').click(() => {
		$.ajax({
			url: 'elencoPersone',
			method: 'get'
		})
		.done((persone) => {
			persone.forEach((p) => {
				$('#ulPersone').append('<li>' + p.nome + ' ' + p.cognome + '</li>')
			});
		});
	});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>