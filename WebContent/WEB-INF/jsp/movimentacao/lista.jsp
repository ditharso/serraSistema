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
				<th>Fazenda</th>
				<th>numeroDoCurral</th>
				<th>Rebanho</th>


			</tr>
		</thead>
		<tbody>
			<c:forEach items="${movimentacaoModelList}" var="movimentacao">
				<tr>
					<td>${movimentacao.fazenda}</td>
					<td>${movimentacao.numeroDoCurral}</td>
					<td>${movimentacao.rebanho}</td>

					<td><a href="edita?id=${movimentacao.id}">Editar</a></td>
					<td><a href="remove?id=${movimentacao.id }">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>