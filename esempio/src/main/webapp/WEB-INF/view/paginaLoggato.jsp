<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page session="true"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<title> utenteLoggato </title>
</head>
<body style="margin: 50px;">
	<span id="log">ciao ${ utenteLoggato.nome } sei loggato</span>
	<span id="log">abiti a ${ utenteLoggato.residenza } </span>
	<br>
	<button class="btn btn-primary" id="btnLogout" onclick="location.href='logoutUtente'">LOGOUT</button>
  	<br><br><br>
 	<span><h4>INSERIMENTO VESTITO</h4></span>
 	<br>
 	<form id="formInserimentoVestito">
	<div class="form-group">
	  <label for="nomeUtente">colore</label>
	  <input type="text" class="form-control" name="coloreVestito" aria-describedby="emailHelp" placeholder="inserisci colore">
	</div>
	<div class="form-group">
		<label for="cognomeUtente">tessuto</label>
		<input type="text" class="form-control" name="tessutoVestito" aria-describedby="emailHelp" placeholder="inserisci tessuto">
	</div>

	<div class="form-check form-check-inline">
		<input class="form-check-input" type="checkbox"
			name="disponibilita" id="disponibilita" value="disponibile">
		<label class="form-check-label" for="inlineRadio1">disponibile</label>
	</div>
		<br><br><br>
		<button type="submit" class="btn btn-primary" id="btnAggiungi">aggiungi</button>
  	</form>
  	<span id="esitoOperazione">${ esito }</span>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	</script>
	<script type="text/javascript">
	$('#btnAggiungi').click((e) => {
		e.preventDefault();
		$.ajax({
			url: 'aggiungiVestito',
			method: 'post',
			data: $('#formInserimentoVestito').serialize()
		})
		.done((risultato) => {
			$('#esitoOperazione').text(risultato);
			console.log(risultato);
		});
	});
	</script>
</body>
</html>