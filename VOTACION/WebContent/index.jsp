<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<STYLE type="text/css">

	label {
		font-weight: bold;
		font-size: 20px;
	}

</STYLE>
<script>

	function validar (){
		var msg = "Nombre de grupo obligatorio";
		var nombreGrupo =document.getElementById("nombreGrupo").value;
		
		if (nombreGrupo == "") {
			document.getElementById("error").innerHTML = msg;
			return false;
		}
		
		return true;
		
	}

</script>
</head>
<body>

	<div align="left">
		
		<form onsubmit="return validar()" action="ServletEncuesta" method="post">
	
			
			<label>1. Usabilidad.</label><br/>
			<input type="radio" name="usabilidad" value="1"/> 1
			<input type="radio" name="usabilidad" value="2"/> 2
			<input type="radio" name="usabilidad" value="3" checked="checked"/> 3
			<input type="radio" name="usabilidad" value="4"/> 4
			<input type="radio" name="usabilidad" value="5"/> 5
			
			<br/><br/>
			
			<label>2. Presentación.</label><br/>
			<input type="radio" name="presentación" value="1"/> 1
			<input type="radio" name="presentación" value="2"/> 2
			<input type="radio" name="presentación" value="3" checked="checked"/> 3
			<input type="radio" name="presentación" value="4"/> 4
			<input type="radio" name="presentación" value="5"/> 5
			
			<br/><br/>
			
			<label>3. Diseño.</label><br/>
			<input type="radio" name="disenio" value="1"/> 1
			<input type="radio" name="disenio" value="2"/> 2
			<input type="radio" name="disenio" value="3" checked="checked"/> 3
			<input type="radio" name="disenio" value="4"/> 4
			<input type="radio" name="disenio" value="5"/> 5
			
			<br/><br/>
			
			<label>4. Facilidad de uso.</label><br/>
			<input type="radio" name="facilidad" value="1"/> 1
			<input type="radio" name="facilidad" value="2"/> 2
			<input type="radio" name="facilidad" value="3" checked="checked"/> 3
			<input type="radio" name="facilidad" value="4"/> 4
			<input type="radio" name="facilidad" value="5"/> 5
			
			<br/><br/>
           
            <label>5. Seguridad.</label><br/>
			<input type="radio" name="seguridad" value="1"/> 1
			<input type="radio" name="seguridad" value="2"/> 2
			<input type="radio" name="seguridad" value="3" checked="checked"/> 3
			<input type="radio" name="seguridad" value="4"/> 4
			<input type="radio" name="seguridad" value="5"/> 5
			
			<br/><br/>
			
			<label>6. Uso de recursos.</label><br/>
			<input type="radio" name="recursos" value="1"/> 1
			<input type="radio" name="recursos" value="2"/> 2
			<input type="radio" name="recursos" value="3" checked="checked"/> 3
			<input type="radio" name="recursos" value="4"/> 4
			<input type="radio" name="recursos" value="5"/> 5
			
			<br/><br/>
			
			<label>7. Consecución de los objetivos.</label><br/>
			<input type="radio" name="objetivos" value="1"/> 1
			<input type="radio" name="objetivos" value="2"/> 2
			<input type="radio" name="objetivos" value="3" checked="checked"/> 3
			<input type="radio" name="objetivos" value="4"/> 4
			<input type="radio" name="objetivos" value="5"/> 5
			
			<br/><br/>
			
			<label>9. Creatividad y originalidad.</label><br/>
			<input type="radio" name="creatividad" value="1"/> 1
			<input type="radio" name="creatividad" value="2"/> 2
			<input type="radio" name="creatividad" value="3" checked="checked"/> 3
			<input type="radio" name="creatividad" value="4"/> 4
			<input type="radio" name="creatividad" value="5"/> 5
			
			<br/><br/>
			
			<label>10. Puntos por resolución de problemas.</label><br/>
			<input type="radio" name="resolucion" value="1"/> 1
			<input type="radio" name="resolucion" value="2"/> 2
			<input type="radio" name="resolucion" value="3" checked="checked"/> 3
			<input type="radio" name="resolucion" value="4"/> 4
			<input type="radio" name="resolucion" value="5"/> 5
			
			<br/><br/>
			
			<label>Grupo</label><br/>
			<input type="text" name="nombre" size="30" id="nombreGrupo">
			<p id="error" style="color: red"></p>
			
			<br/><br/>
			
			<label>¿Que te ha parecido el proyecto? Críticas constructivas por favor</label><br/>
			<TEXTAREA rows="15" cols="50" name="comentarios" maxlength="199"></TEXTAREA>
			
			<br/><br/>
			
			<INPUT type="submit" value="VOTAR"/>
			
		</form>
				
	
	</div>
	
	<DIV align="right">
	
		<FORM action="ServletEncuesta">
			<INPUT type="submit" value="Boton secreto"/>
		</FORM>
		
	</DIV>

</body>
</html>