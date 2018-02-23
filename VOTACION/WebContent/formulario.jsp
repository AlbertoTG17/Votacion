<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Encuesta</title>
<STYLE type="text/css">

	label {
		font-weight: bold;
		font-size: 20px;
	}
body{
  margin-left: 30px;
  margin-right: 30px;
  margin-top: 20px;
  margin-bottom: 20px;
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

	<div align="left" class="col-md-6">
		<div align="left" class="col-md-4.5">
		<form onsubmit="return validar()" action="ServletEncuesta" method="post">
		<br/>
		<label >Grupo al que votas</label><br/>
			<input  class="form-control input-lg" type="text" name="nombre" size="30" id="nombreGrupo">
			<p id="error" style="color: red"></p>
			</div>
			<br/>
	
			
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
			
			<label>8. Creatividad y originalidad.</label><br/>
			<input type="radio" name="creatividad" value="1"/> 1
			<input type="radio" name="creatividad" value="2"/> 2
			<input type="radio" name="creatividad" value="3" checked="checked"/> 3
			<input type="radio" name="creatividad" value="4"/> 4
			<input type="radio" name="creatividad" value="5"/> 5
			
			<br/><br/>
			
			<label>9. Puntos por resolución de problemas.</label><br/>
			<input type="radio" name="resolucion" value="1"/> 1
			<input type="radio" name="resolucion" value="2"/> 2
			<input type="radio" name="resolucion" value="3" checked="checked"/> 3
			<input type="radio" name="resolucion" value="4"/> 4
			<input type="radio" name="resolucion" value="5"/> 5
			
			<br/><br/>
			
			
			
			<label>¿Que te ha parecido el proyecto? Críticas constructivas por favor</label><br/>
			<TEXTAREA rows="8" cols="8" name="comentarios" maxlength="250" class="form-control"></TEXTAREA>
			
			<br/><br/>
			
			<INPUT class="btn btn-primary" type="submit" value="VOTAR" />
			<br/><br/>
		</form>
				
	
	</div>
	
	

</body>
</html>