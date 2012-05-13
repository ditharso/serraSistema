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
			<legend>Editar Animal</legend>
			
			<input type="text" name="animalModel.id" value="${animalModel.id}" /> 
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="animalModel.nome" value="${animalModel.nome}" /> 
			
			<label for="sexo">sexo:</label>
			<input id="sexo" type="text" name="animalModel.sexo" value="${animalModel.sexo}"></input>
			
			
			<label for="nascimento">nascimento:</label>
			<input id="nascimento" type="text" name="animalModel.nascimento" value="${animalModel.nascimento}" />
			
			<label for="raca">raça:</label>
			<input id="raca" type="text" name="animalModel.raca" value="${animalModel.raca}" />
			
			<label for="sisbov">sisbov:</label>
			<input id="sisbov" type="text" name="animalModel.sisbov" value="${animalModel.sisbov}" />
			
			<label for="peso">peso:</label>
			<input id="peso" type="text" name="animalModel.peso" value="${animalModel.peso}" />
			
			<label for="Pai">pai:</label>
			<input id="Pai" type="text" name="animalModel.pai" value="${animalModel.pai}" />
			
			<label for="mae">mae:</label>
			<input id="mae" type="text" name="animalModel.mae" value="${animalModel.mae}" />
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>