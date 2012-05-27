<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Cadastre Novo Animal</title>
<script type="text/javascript" src="../jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="../jquery.validate.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/serra.css" />
</head>
<body>

<div id="erros">
       <ul>
           <c:forEach items="${errors}" var="error">
               <li>${error.category } - ${error.message }</li>
           </c:forEach>
       </ul>
</div>

	<form id="animalForm" action="<c:url value="/animal"/>" method="post">

		

		<fieldset>
			<legend>Adicionar Animal</legend>
			
			<label for="nome">Nome:</label> 
			
			<input id="nome" class="required" minlength="3" type="text" name="animal.nome" value="${animal.nome}"/> 
			
			<label for="sexo">cpf:</label>
			
			<input id="sexo" class="required" type="text" name="animal.sexo" value="${animal.sexo}"/>
			
			<label for="nascimento">nascimento:</label> 
			
			<input id="nascimento" type="text" name="animal.nascimento" value="${animal.nascimento}"/>
			
			<label for="raca">Raça:</label> 
			
			<input id="raca" type="text" name="animal.raca" value="${animal.raca}"/>

			<label for="sisbov">SISBOV:</label> 
			
			<input id="sisbov" type="text" name="animal.sisbov" value="${animal.sisbov}"/>

			<label for="peso">Peso:</label> 
			
			<input id="peso" type="text" name="animal.peso" value="${animal.peso}"/>

			<label for="pai">Pai:</label> 
			
			<input id="pai" type="text" name="animal.pai" value="${animal.pai}"/>

			<label for="mae">Mãe:</label> 
			
			<input id="pai" type="text" name="animal.mae" value="${animal.pai}"/>

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>
	
		<script type="text/javascript">
				$(’#animalForm’).validate();
		</script>

</body>
</html>