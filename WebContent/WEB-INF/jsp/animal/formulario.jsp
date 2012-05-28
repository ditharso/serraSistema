<body>


	<div align="center">
		<form id="animalForm" action="<c:url value="/animal"/>" method="post">


			<fieldset>

				<legend>Adicionar Animal</legend>

				<table border="1">
					<tr>
						<td><label for="nome">Nome:</label></td>
						<td><input id="nome" type="text" name="animal.nome"
							value="${animal.nome}" /></td>
					</tr>
					<tr>
						<td><label for="sexo">sexo:</label></td>
						<td><input id="sexo" type="text" name="animal.sexo"
							value="${animal.sexo}" /></td>
					</tr>

					<tr>
						<td><label for="nascimento">nascimento:</label></td>
						<td><input id="nascimento" type="text"
							name="animal.nascimento" value="${animal.nascimento}" /></td>
					</tr>

					<tr>
						<td><label for="raca">Raça:</label></td>
						<td><input id="raca" type="text" name="animal.raca"
							value="${animal.raca}" /></td>
					</tr>

					<tr>
						<td><label for="sisbov">SISBOV:</label></td>
						<td><input id="sisbov" type="text" name="animal.sisbov"
							value="${animal.sisbov}" /></td>
					</tr>

					<tr>
						<td><label for="peso">Peso:</label></td>
						<td><input id="peso" type="text" name="animal.peso"
							value="${animal.peso}" /></td>
					</tr>

					<tr>
						<td><label for="pai">Pai:</label></td>
						<td><input id="pai" type="text" name="animal.pai"
							value="${animal.pai}" /></td>
					</tr>
					<tr>
						<td><label for="mae">Mãe:</label></td>
						<td><input id="pai" type="text" name="animal.mae"
							value="${animal.pai}" /></td>
					</tr>
					<tr>
						<td>
							<button type="reset">Limpar</button>
						</td>
						<td>
							<button type="submit">Enviar</button>
						</td>
					</tr>
				</table>

			</fieldset>


		</form>

	</div>