<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>

	<form action="adiciona" method="post">


		<fieldset>
			<legend>Descarte Animal</legend>
			
			<label for="funcionario">funcionario:</label> 
			<input id="funcionario" type="text" name="descarte.funcionario" /> 
			
			<label for="motivo">motivo:</label>
			<input id="motivo" type="text" name="descarte.motivo" />
			
			<label for="animal">animal:</label> 
			<input id="animal" type="text" name="descarte.animal" />
			
			<label for="detalheDaMorte">Detalhe:</label> 
			<input id="detalheDaMorte" type="text" name="descarte.detalheDaMorte" />
			
			<label for="fazenda">fazenda:</label>			
			<input id="fazenda" type="text" name="descarte.fazenda" />
			
			<label for="rebanho">rebanho:</label> 			
			<input id="rebanho" type="text" name="descarte.rebanho" />
			


			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>