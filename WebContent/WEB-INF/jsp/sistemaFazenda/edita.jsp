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
			
			<input type="text" name="sistemaFazendaModel.id" value="${sistemaFazendaModel.id}" /> 
			
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="sistemaFazendaModel.nome" value="${sistemaFazendaModel.nome}" /> 
			
			<label for="criacaoPrincipal">criacaoPrincipal:</label>
			<input id="criacaoPrincipal" type="text" name="sistemaFazendaModel.criacaoPrincipal" value="${sistemaFazendaModel.criacaoPrincipal}"/>
			
			<label for="infraestrutura">infraestrutura:</label> 
			<input id="infraestrutura" type="text" name="sistemaFazendaModel.infraestrutura" value="${sistemaFazendaModel.infraestrutura}" />
			
			<label for="tipodeExploracao">tipodeExploracao:</label> 
			<input id="tipodeExploracao" type="text" name="sistemaFazendaModel.tipodeExploracao" value="${sistemaFazendaModel.tipodeExploracao}"/>

			<label for="sistemadeCriacao">sistemadeCriacao:</label> 
			<input id="sistemadeCriacao" type="text" name="sistemaFazendaModel.sistemadeCriacao" value="${sistemaFazendaModel.sistemadeCriacao}" />

			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>