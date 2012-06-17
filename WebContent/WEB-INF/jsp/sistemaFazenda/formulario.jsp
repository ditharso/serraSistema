<body>

	<form action="adiciona" method="post">


		<fieldset>
			<legend>Adicionar Sistema de Produção da Fazenda</legend>

			<table border="1">
				<tr>

					<td><label for="nome">Nome:</label></td>
					<td><input id="nome" type="text" name="sistemaFazenda.nome" />
					</td>
				</tr>

				<tr>

					<td><label for="criacaoPrincipal">Criacao Principal:</label></td>
					<td><input id="criacaoPrincipal" type="text"
						name="sistemaFazenda.criacaoPrincipal" /></td>
				</tr>
				<tr>

					<td><label for="infraestrutura">Infraestrutura:</label></td>
					<td><input id="infraestrutura" type="text"
						name="sistemaFazenda.infraestrutura" /></td>
				</tr>

				<tr>

					<td><label for="tipodeExploracao">Tipo de Exploracao:</label></td>


					<td>
						<ul>
							<li><input id="tipodeExploracao" type="radio"
								name="sistemaFazenda.tipodeExploracao" value="Engorda" />Engorda
							</li>
							<li><input id="tipodeExploracao" type="radio"
								name="sistemaFazenda.tipodeExploracao" value="Rebroducao" />Reproducao
							</li>
						</ul>
					</td>

				</tr>
				<tr>

					<td><label for="sistemadeCriacao">Sistema de Criacao:</label></td>
					<td align="center">
					
						<ul>
							<li><input id="sistemadeCriacao" type="radio"
								name="sistemaFazenda.sistemadeCriacao" value="Extensivo" />Extensivo
							</li>
							<li><input id="sistemadeCriacao" type="radio"
								name="sistemaFazenda.sistemadeCriacao" value="Intensivo" />Intensivo
							</li>
							<li><input id="sistemadeCriacao" type="radio"
								name="sistemaFazenda.sistemadeCriacao" value="Misto" />Misto</li>

						</ul>




					</td>
				</tr>

				<tr>
					<td></td>
					<td>
						<button type="submit">Enviar</button>
					</td>
				</tr>
			</table>
			<br>
		</fieldset>


	</form>

</body>
</html>