<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<th>Nome</th>
				<th>sexo</th>
				<th>nascimento</th>
				<th>raca</th>
				<th>sisbov</th>
				<th>peso</th>
				<th>pai</th>
				<th>mae</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${animalModelList}" var="animal">
				<tr>
					<td>${animal.nome}</td>
					<td>${animal.sexo}</td>
					<td>${animal.nascimento}</td>
					<td>${animal.raca}</td>
					<td>${animal.sisbov}</td>
					<td>${animal.peso}</td>
					<td>${animal.pai}</td>
					<td>${animal.mae}</td>
					<td><a href="edita?id=${animal.id}">Editar</a></td>
					<td><a href="remove?id=${animal.id }">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>