<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>

	<div align="center">
	
		<table border="1">
		
			<tr><th>GRUPO</th><th>PUNTUACION</th><th>COMENTARIOS</th></tr>
			
			<c:forEach items="${requestScope.lista}" var="e">
			
				<tr>
					<td>${e.nombreGrupo}</td>
					<td>${e.total}</td>
					<td>${e.comentarios}</td>
				</tr>
			
			</c:forEach>
		
		</table>
		
		<a href="index.jsp">Incio</a>
	
	</div>

</body>
</html>