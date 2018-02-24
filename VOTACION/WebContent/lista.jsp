<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Ranking votaciones</title>
<STYLE type="text/css">

th, td {
	width: 25%;
	text-align: center;
	vertical-align: top;

	caption-side: bottom;
	
}

</STYLE>
</head>
<body>
<br>
<div align="center">
		<div class="hr-lg"></div>
	<div align="center" class="col-6">
	<h2>Ranking de votaciones</h2></br>
		<table border="1" class="table table-striped" align="center">
		<thead >
			<tr><th>GRUPO</th><th>PUNTUACION</th><th>COMENTARIOS</th></tr>
			</thead>
			<tbody >
			<c:forEach items="${requestScope.lista}" var="e">
			
				<tr >
					<td >${e.nombreGrupo}</td>
					<td>${e.total}</td>
					<td>${e.comentarios}</td>
				</tr>
			
			</c:forEach>
		</tbody>
		</table>
		<br>
		<a class="btn btn-primary" href="index.jsp">Volver a inicio</a>
	<br><br><br>
	</div>

<FORM action="ServletTabla" method="post">
			<p>Si da por finalizadas todas sus encuestas y desea borrar las
				votaciones pulse abajo.</p>
			<INPUT class="btn btn-danger" type="submit"
				value="Borrar todas las votaciones" />
		</FORM>
		</div>
</body>
</html>