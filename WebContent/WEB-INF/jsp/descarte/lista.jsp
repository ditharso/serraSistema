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
				<th>funcionario</th>
				<th>motivo</th>
				<th>animal</th>
				<th>detalheDaMorte</th>
				<th>fazenda</th>
				<th>rebanho</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${descarteModelList}" var="descarte">
				<tr>
					<td>${descarte.funcionario}</td>
					<td>${descarte.motivo}</td>
					<td>${descarte.animal}</td>
					<td>${descarte.detalheDaMorte}</td>
					<td>${descarte.fazenda}</td>
					<td>${descarte.rebanho}</td>

					<td><a href="edita?id=${descarte.id}">Editar</a></td>
					<td><a href="remove?id=${descarte.id }">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>