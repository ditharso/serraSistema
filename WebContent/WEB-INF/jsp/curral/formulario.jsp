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
			<legend>Adicionar Curral</legend>
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="curral.nome" /> 
			
			<label for="numero">numero:</label>
			<input id="numero" type="text" name="curral.numero" />
			
			<label for="tamanho">tamanho:</label> 
			<input id="tamanho" type="text" name="curral.tamanho" />
			
			<label for="pastagem">Pastagem:</label> 
			<input id="pastagem" type="text" name="curral.pastagem" />

			<label for="rosada">Rosada:</label> 
			<input id="rosada" type="text" name="curral.rosada" />

			<label for="aguada">aguada:</label> 
			<input id="aguada" type="text" name="curral.aguada" />

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>