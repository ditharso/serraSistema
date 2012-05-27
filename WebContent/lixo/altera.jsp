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
			<legend>Editar pessoa</legend>
			<input type="hidden" name="pessoa.id" value="${pessoa.id}" /> <label
				for="nome">Nome:</label> <input id="nome" type="text"
				name="pessoa.nome" value="${pessoa.nome}" /> <label
				for="cpf">Descrição:</label>
			<textarea id="cpf" name="pessoa.cpf">${pessoa.cpf}</textarea>
			<label for="idade">Preço:</label> <input id="idade" type="text"
				name="pessoa.idade" value="${pessoa.idade}" />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>