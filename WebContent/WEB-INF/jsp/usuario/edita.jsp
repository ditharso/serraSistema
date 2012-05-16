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
			<legend>Editar Usuario</legend>
			
			<input type="text" name="usuarioModel.id" value="${usuarioModel.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="usuarioModel.nome" value="${usuarioModel.nome}" /> 
			
			<label for="sexo">sexo:</label>
			<input id="sexo" type="text" name="usuarioModel.sexo" value="${usuarioModel.sexo}"/>
			
			<label for="nascimento">Nascimento:</label> 
			<input id="nascimento" type="text" name="usuarioModel.nascimento" value="${usuarioModel.nascimento}"/>
						
			<label for="cargo">cargo:</label> 
			<input id="cargo" type="text" name="usuarioModel.cargo" value="${usuarioModel.cargo}"/>
			
			<label for="cpf">cpf:</label> 
			<input id="cpf" type="text" name="usuarioModel.cpf" value="${usuarioModel.cpf}" />

			<label for="estado">estado:</label> 
			<input id="estado" type="text" name="usuarioModel.estado" value="${usuarioModel.estado}"/>

			<label for="cidade">cidade:</label> 
			<input id="cidade" type="text" name="usuarioModel.cidade" value="${usuarioModel.cidade}"/>

			<label for="cep">cep:</label> 
			<input id="cep" type="text" name="usuarioModel.cep" value="${usuarioModel.cep}"/>
			
			<label for="endereco">endereco:</label> 
			<input id="endereco" type="text" name="usuarioModel.endereco" value="${usuarioModel.endereco}"/>
			
			<label for="telefone">telefone:</label> 
			<input id="telefone" type="text" name="usuarioModel.telefone" value="${usuarioModel.telefone}"/>
			
			<label for="telefone2">telefone2:</label> 
			<input id="telefone2" type="text" name="usuarioModel.telefone2" value="${usuarioModel.telefone2}"/>
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>