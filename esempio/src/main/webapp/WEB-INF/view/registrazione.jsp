<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

</head>
<body style="margin: 50px;">
<h2>${ variabile }</h2>
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
  	<button id="btnLogin" class="btn btn-primary" onclick="location.href='login'">login</button>
  
<span id="esitoOperazione"></span>
<!-- <button id="btnLista">Preleva lista persone</button> -->
<ul id="ulPersone">
</ul>

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