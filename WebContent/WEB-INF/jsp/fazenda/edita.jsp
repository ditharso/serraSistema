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
			<legend>Editar Fazenda</legend>
			
			<input type="text" name="fazendaModel.id" value="${fazendaModel.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="fazendaModel.nome" value="${fazendaModel.nome}" /> 
			
			<label for="criacao">criacao:</label>
			<input id="criacao" type="text" name="fazendaModel.criacao" value="${fazendaModel.criacao}"/>
			
			<label for="escricaoEstadual">escricaoEstadual:</label> 
			<input id="escricaoEstadual" type="text" name="fazendaModel.escricaoEstadual" value="${fazendaModel.escricaoEstadual}" />
			
			<label for="incra">incra:</label> 
			<input id="incra" type="text" name="fazendaModel.incra" value="${fazendaModel.incra}"/>

			<label for="area">area:</label> 
			<input id="area" type="text" name="fazendaModel.area" value="${fazendaModel.area}" />

			<label for="estado">Estado:</label> 
			<input id="estado" type="text" name="fazendaModel.estado" value="${fazendaModel.estado}"/>

			<label for="cidade">cidade:</label> 
			<input id="cidade" type="text" name="fazendaModel.cidade" value="${fazendaModel.cidade}"/>

			<label for="cep">cep:</label> 
			<input id="cep" type="text" name="fazendaModel.cep" value="${fazendaModel.cep}" />
			
			<label for="endereco">endereco:</label> 
			<input id="endereco" type="text" name="fazendaModel.endereco" value="${fazendaModel.endereco}"/>
			
			<label for="telefone">telefone:</label> 
			<input id="telefone" type="text" name="fazendaModel.telefone" value="${fazendaModel.telefone}"/>
			
			<label for="telefone2">telefone2:</label> 
			<input id="telefone2" type="text" name="fazendaModel.telefone2" value="${fazendaModel.telefone2}"/>
			
			<label for="proprietario">proprietario:</label> 
			<input id="proprietario" type="text" name="fazendaModel.proprietario" value="${fazendaModel.proprietario}"/>
			
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>