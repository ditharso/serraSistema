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

<form action="altera" method="post">
		<fieldset>
			<legend>Editar curral</legend>
			
			<input type="text" name="curralModel.id" value="${curralModel.id}" /> 
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="curralModel.nome" value="${curralModel.nome}" /> 
			
			<label for="numero">numero:</label>
			<input id="numero" type="text" name="curralModel.numero" value="${curralModel.numero}"></input>
			
			
			<label for="tamanho">tamanho:</label>
			<input id="tamanho" type="text" name="curralModel.tamanho" value="${curralModel.tamanho}" />
			
			<label for="pastagem">raça:</label>
			<input id="pastagem" type="text" name="curralModel.pastagem" value="${curralModel.pastagem}" />
			
			<label for="rosada">rosada:</label>
			<input id="rosada" type="text" name="curralModel.rosada" value="${curralModel.rosada}" />
			
			<label for="aguada">aguada:</label>
			<input id="aguada" type="text" name="curralModel.aguada" value="${curralModel.aguada}" />
			

			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>