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
			<legend>Adicionar Animal</legend>
			
			<label for="nome">Nome:</label> 
			
			<input id="nome" type="text" name="animal.nome" /> 
			
			<label for="sexo">cpf:</label>
			
			<input id="sexo" type="text" name="animal.sexo" />
			
			<label for="nascimento">nascimento:</label> 
			
			<input id="nascimento" type="text" name="animal.nascimento" />
			
			<label for="raca">Raça:</label> 
			
			<input id="raca" type="text" name="animal.raca" />

			<label for="sisbov">SISBOV:</label> 
			
			<input id="sisbov" type="text" name="animal.sisbov" />

			<label for="peso">Peso:</label> 
			
			<input id="peso" type="text" name="animal.peso" />

			<label for="pai">Pai:</label> 
			
			<input id="pai" type="text" name="animal.pai" />

			<label for="mae">Mãe:</label> 
			
			<input id="mae" type="text" name="animal.mae" />

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>