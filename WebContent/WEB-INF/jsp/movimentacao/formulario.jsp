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
			<legend>Adicionar movimentacao</legend>
			
			<label for="fazenda">fazenda:</label> 
			<input id="fazenda" type="text" name="movimentacao.fazenda" /> 
			
			<label for="numeroDoCurral">numeroDoCurral:</label>
			<input id="numeroDoCurral" type="text" name="movimentacao.numeroDoCurral" />
			
			<label for="rebanho">rebanho:</label> 
			<input id="rebanho" type="text" name="movimentacao.rebanho" />
			

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>