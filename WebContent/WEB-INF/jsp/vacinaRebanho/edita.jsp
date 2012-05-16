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
			
			<input type="text" name="vacinaRebanhoModel.id" value="${vacinaRebanhoModel.id}" />
			 
			<label for="funcionario">Nome:</label> 
			<input id="funcionario" type="text" name="vacinaRebanhoModel.funcionario" value="${vacinaRebanhoModel.funcionario}" /> 
			
			<label for="vacina">vacina:</label>
			<input id="vacina" type="text" name="vacinaRebanhoModel.vacina" value="${vacinaRebanhoModel.vacina}"></input>
			
			
			<label for="dataAplicacao">dataAplicacao:</label>
			<input id="dataAplicacao" type="text" name="vacinaRebanhoModel.dataAplicacao" value="${vacinaRebanhoModel.dataAplicacao}" />
			
			<label for="fazenda">raça:</label>
			<input id="fazenda" type="text" name="vacinaRebanhoModel.fazenda" value="${vacinaRebanhoModel.fazenda}" />
			
			<label for="rebanho">rebanho:</label>
			<input id="rebanho" type="text" name="vacinaRebanhoModel.rebanho" value="${vacinaRebanhoModel.rebanho}" />
			
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>