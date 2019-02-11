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
<body>
	<span id="log">ciao ${ utenteLoggato.nome } sei loggato</span>
	<span id="log">abiti a ${ utenteLoggato.residenza } </span>
	<button id="btnLogout" onclick="location.href='logoutUtente'">LOGOUT</button>
  
  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	</script>
</body>
</html>