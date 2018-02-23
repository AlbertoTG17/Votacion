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

body{
  margin-left: 30px;
  margin-right: 30px;
  margin-top: 20px;
  margin-bottom: 20px;
}
/* table {
	width: 20%;
	height: 100px;
} */
</STYLE>
</head>
<body>
<br>
	<div align="center" class="container-fluid">
	<h2>Ranking de votaciones</h2></br>
		<table border="1" class="table table-striped" >
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
	<br><br>
	</div>

</body>
</html>