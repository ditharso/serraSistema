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
			<input type="text" name="pessoaModel.id" value="${pessoaModel.id}" /> <label
				for="nome">Nome:</label> <input id="nome" type="text"
				name="pessoaModel.nome" value="${pessoaModel.nome}" /> <label
				for="cpf">Descri��o:</label>
			<textarea id="cpf" name="pessoaModel.cpf">${pessoaModel.cpf}</textarea>
			<label for="idade">Pre�o:</label> <input id="idade" type="text"
				name="pessoaModel.idade" value="${pessoaModel.idade}" />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
	testando o git

</body>
</html>