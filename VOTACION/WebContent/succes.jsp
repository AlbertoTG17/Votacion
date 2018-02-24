<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Encuesta terminada</title>
	<STYLE type="text/css">
body {
	margin-left: 30px;
	margin-right: 30px;
	margin-top: 30px;
	margin-bottom: 20px;
}
</STYLE>
</head>
<body>

	<div align="center">

		<p>
			Gracias por votar al grupo ${requestScope.encuesta.nombreGrupo} ;)</p>
		<br />

		<p>La puntuacion media ha sido de ${requestScope.encuesta.total}
			de un máximo de 5 puntos.</p>
		<br />
		<br /> <a class="btn btn-primary" href="index.jsp">Volver a inicio</a>

	</div>
	<br />
	<br />
	<DIV align="center">

		<FORM action="ServletEncuesta">
			<INPUT class="btn btn-primary" type="submit"
				value="Ver ranking de votaciones realizadas" />
		</FORM>

	</DIV>


</body>
</html>