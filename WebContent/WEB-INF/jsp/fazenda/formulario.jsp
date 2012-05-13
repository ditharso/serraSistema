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
			<legend>Adicionar Fazenda</legend>
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="fazenda.nome" /> 
			
			<label for="criacao">criacao:</label>
			<input id="criacao" type="text" name="fazenda.criacao" />
			
			<label for="escricaoEstadual">escricaoEstadual:</label> 
			<input id="escricaoEstadual" type="text" name="fazenda.escricaoEstadual" />
			
			<label for="incra">incra:</label> 
			<input id="incra" type="text" name="fazenda.incra" />

			<label for="area">area:</label> 
			<input id="area" type="text" name="fazenda.area" />

			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="fazenda.estado" />

			<label for="cidade">cidade:</label> 
			<input id="cidade" type="text" name="fazenda.cidade" />

			<label for="cep">cep:</label> 
			<input id="cep" type="text" name="fazenda.cep" />
			
			<label for="endereco">endereco:</label> 
			<input id="endereco" type="text" name="fazenda.endereco" />
			
			<label for="telefone">telefone:</label> 
			<input id="telefone" type="text" name="fazenda.telefone" />
			
			<label for="telefone2">telefone2:</label> 
			<input id="telefone2" type="text" name="fazenda.telefone2" />
			
			<label for="proprietario">proprietario:</label> 
			<input id="proprietario" type="text" name="fazenda.proprietario" />

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>