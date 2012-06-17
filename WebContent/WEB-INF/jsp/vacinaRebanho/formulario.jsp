<body>

	<form action="adiciona" method="post">


		<fieldset>
			<legend>Adicionar Vacina Animal</legend>

			<table border="1">

				<tr>
					<td><label for="funcionario">Funcionario:</label></td>
					<td><input id="funcionario" type="text"
						name="vacinaRebanho.funcionario"  value="${usuarioWeb.nome }"/></td>
				</tr>

				<tr>
					<td><label for="vacina">Vacina:</label></td>
					<td>

						<select id="vacina" name="vacinaRebanho.vacina">
								<option value="Manqueira">Manqueira</option>
								<option value="Brucelose">Brucelose</option>
						</select>
					</td>
				</tr>

				<tr>
					<td><label for="dataAplicacao">Data de Aplicação:</label></td>
					<td><input id="dataAplicacao" type="text"
						name="vacinaRebanho.dataAplicacao" /></td>
				</tr>

				<tr>
					<td><label for="fazenda">Fazenda:</label></td>
					<td><input id="fazenda" type="text"
						name="vacinaRebanho.fazenda" /></td>
				</tr>

				<tr>
					<td><label for="rebanho">Animal:</label></td>
					<!-- <td><input id="rebanho" type="text"
						name="vacinaRebanho.rebanho" /></td> -->
						
					<td><select id="rebanho" name="vacinaRebanho.rebanho">
							<c:forEach items="${animalModelList}" var="animal">
								<option value="${animal.sisbov}">${animal.sisbov}</option>
							</c:forEach>
					</select></td>
						
						
						
				</tr>



				<tr>
					<td></td>
					<td>
						<button type="submit">Enviar</button>
					</td>
				</tr>

			</table>
			<br />

		</fieldset>


	</form>

</body>
</html>