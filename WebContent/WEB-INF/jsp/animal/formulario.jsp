
<div align="center">
	<form id="animalForm" action="<c:url value="/animal"/>" method="post">


		<fieldset>

			<legend>Adicionar Animal</legend>

			<table border="1">
				<tr>
					<td><label for="nome">Nome:</label></td>
					<td><input id="nome" class="required" minlength="3"
						type="text" name="animal.nome" value="${animal.nome}" /></td>
				</tr>
				<tr>
					<td><label for="sexo">sexo:</label></td>
					<td><select id="sexo" name="animal.sexo">
							<option value="Masculino">Masculino</option>
							<option value="Feminino">Feminino</option>

					</select></td>
				</tr>

				<tr>
					<td><label for="nascimento">nascimento:</label></td>
					<td><input id="nascimento" class="required" type="text"
						name="animal.nascimento" value="${animal.nascimento}" /></td>
				</tr>

				<tr>
					<td><label for="raca">Raça:</label></td>
					<td><select id="raca" name="animal.raca">
							<option value="Nelore">Nelore</option>
							<option value="Holandes">Honaldes</option>
							<option value="Turino">Turino</option>
							<option value="Gir">Gir</option>
							<option value="Zebu">Zebu</option>
							<option value="S.R.D.">S.R.D.</option>

					</select></td>
				</tr>

				<tr>
					<td><label for="sisbov">SISBOV:</label></td>
					<td><input id="sisbov" type="text" name="animal.sisbov"
						value="${animal.sisbov}" class="required" minlength="15" maxlength="15"/></td>
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
			<br />

		</fieldset>

	</form>
	<script type="text/javascript">
		$('#animalForm').validate();
	</script>

</div>