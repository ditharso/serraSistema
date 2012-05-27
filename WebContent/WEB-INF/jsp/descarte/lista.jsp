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