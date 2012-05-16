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
			<legend>Adicionar Usuario</legend>
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="usuario.nome" /> 
			
			<label for="sexo">cpf:</label>
			<input id="sexo" type="text" name="usuario.sexo" />
			
			<label for="nascimento">nascimento:</label> 
			<input id="nascimento" type="text" name="usuario.nascimento" />
			
			<label for="cargo">cargo:</label> 
			<input id="cargo" type="text" name="usuario.cargo" />

			<label for="cpf">cpf:</label> 
			<input id="cpf" type="text" name="usuario.cpf" />

			<label for="estado">estado:</label> 
			<input id="estado" type="text" name="usuario.estado" />

			<label for="cidade">cidade:</label> 
			<input id="cidade" type="text" name="usuario.cidade" />

			<label for="cep">cep:</label> 
			<input id="cep" type="text" name="usuario.cep" />
			
			<label for="endereco">endereco:</label> 
			<input id="endereco" type="text" name="usuario.endereco" />
			
			<label for="telefone">telefone:</label> 
			<input id="telefone" type="text" name="usuario.telefone" />
			
			<label for="telefone2">telefone2:</label> 
			<input id="telefone2" type="text" name="usuario.telefone2" />

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>