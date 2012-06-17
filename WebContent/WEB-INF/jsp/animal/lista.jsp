<div align="center">
	<form action="<c:url value="/animal/busca"/>">
		<input name="sisbov" id="search" />
	</form>
	<script type="text/javascript">
				$('#search').puts('Buscar pelo SISBOV');
	</script>
</div>



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
				<td><a href="<c:url value="/animal/${animal.id}"/>">Editar</a></td>
				<td>
					<form action="<c:url value="/animal/${animal.id}"/>" method="post">
						<button class="link" name="_method" value="DELETE">Remover</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

