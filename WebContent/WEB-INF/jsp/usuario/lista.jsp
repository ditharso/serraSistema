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
				<th>cargo</th>
				<th>cpf</th>
				<th>estado</th>
				<th>cidade</th>
				<th>cep</th>
				<th>endereco</th>
				<th>telefone</th>
				<th>telefone2</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${usuarioModelList}" var="usuario">
				<tr>
					<td>${usuario.nome}</td>
					<td>${usuario.sexo}</td>
					<td>${usuario.nascimento}</td>
					<td>${usuario.cargo}</td>
					<td>${usuario.cpf}</td>
					<td>${usuario.estado}</td>
					<td>${usuario.cidade}</td>
					<td>${usuario.cep}</td>
					<td>${usuario.endereco}</td>
					<td>${usuario.telefone}</td>
					<td>${usuario.telefone2}</td>
					<td><a href="edita?id=${usuario.id}">Editar</a></td>
					<td><a href="remove?id=${usuario.id }">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>