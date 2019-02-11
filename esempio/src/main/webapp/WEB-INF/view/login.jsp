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
<span>${ errore }</span>
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
  	<button id="btnRegistrazione" class="btn btn-primary" onclick="location.href='registrazione'">registrazione</button>
  
<span id="esitoOperazione"></span>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>