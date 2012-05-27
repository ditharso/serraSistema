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

	<table border="1" id="grid">
		<thead>
			<tr>
				<th>Animal</th>
				<th>situacao</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${situacaoModelList}" var="situacao">
				<tr>
					<td>${situacao.animal.id}</td>
					<td>${situacao.situacao}</td>

					<td><a href="<c:url value="/situacao/${situacao.id}"/>"><button>Editar</button></a></td>
					<td>
							<form action="<c:url value="/situacao/${situacao.id}"/>" method="post">
								<button class="link" name="_method" value="DELETE">Remover</button>
							</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>