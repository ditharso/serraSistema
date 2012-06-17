<body>

	<form action="adiciona"  method="post">


		<fieldset>
			<legend>Descarte Animal</legend>

			<table border="1">

				<tr>
					<td><label for="funcionario">funcionario:</label></td>
					<td><input id="funcionario" type="text"
						name="descarte.funcionario" /></td>
				</tr>
				<tr>
					<td><label for="motivo">motivo:</label></td>
					<td><input id="motivo" type="text" name="descarte.motivo" /></td>
				</tr>
				<tr>
					<td><label for="animal">animal:</label></td>
					<td><input id="animal" type="text" name="descarte.animal" /></td>
				</tr>
				<tr>
					<td><label for="detalheDaMorte">Detalhe:</label></td>
					<td><input id="detalheDaMorte" type="text"
						name="descarte.detalheDaMorte" /></td>
				</tr>
				<tr>
					<td><label for="fazenda">fazenda:</label></td>
					<td><input id="fazenda" type="text" name="descarte.fazenda" /></td>
				</tr>
				<tr>
					<td><label for="rebanho">rebanho:</label></td>
					<td><input id="rebanho" type="text" name="descarte.rebanho" /></td>
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