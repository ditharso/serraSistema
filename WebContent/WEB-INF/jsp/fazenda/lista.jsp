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
				<th>criacao</th>
				<th>escricaoEstadual</th>
				<th>incra</th>
				<th>area</th>
				<th>estado</th>
				<th>cidade</th>
				<th>cep</th>
				<th>endereço</th>
				<th>telefone1</th>
				<th>telefone2</th>
				<th>proprietario</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${fazendaModelList}" var="fazenda">
				<tr>
					<td>${fazenda.nome}</td>
					<td>${fazenda.criacao}</td>
					<td>${fazenda.escricaoEstadual}</td>
					<td>${fazenda.incra}</td>
					<td>${fazenda.area}</td>
					<td>${fazenda.estado}</td>
					<td>${fazenda.cidade}</td>
					<td>${fazenda.cep}</td>
					<td>${fazenda.endereco}</td>
					<td>${fazenda.telefone}</td>
					<td>${fazenda.telefone2}</td>
					<td>${fazenda.proprietario}</td>
					<td><a href="edita?id=${fazenda.id}">Editar</a></td>
					<td><a href="remove?id=${fazenda.id }">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>