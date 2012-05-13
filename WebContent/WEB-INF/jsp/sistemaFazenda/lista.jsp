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
				<th>criacaoPrincipal</th>
				<th>infraestrutura</th>
				<th>tipodeExploracao</th>
				<th>sistemadeCriacao</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${sistemaFazendaModelList}" var="sistemaFazenda">
				<tr>
					<td>${sistemaFazenda.nome}</td>
					<td>${sistemaFazenda.criacaoPrincipal}</td>
					<td>${sistemaFazenda.infraestrutura}</td>
					<td>${sistemaFazenda.tipodeExploracao}</td>
					<td>${sistemaFazenda.sistemadeCriacao}</td>

					<td><a href="edita?id=${sistemaFazenda.id}">Editar</a></td>
					<td><a href="remove?id=${sistemaFazenda.id }">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>