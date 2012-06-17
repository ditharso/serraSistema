<body>

	<form id="situacaoForm" action="<c:url value="/situacao"/>"
		method="post">

		<fieldset>
			<legend>Adicionar Situação Animal</legend>





			<!-- <input  type="text" name="situacao.animal.id" value="${situacao.animal.id}"/>  -->
			<table border="1">
				<tr>

					<td><label for="animal">Animal:</label></td>
					<td><select id="animal" name="situacao.animal.id">
							<c:forEach items="${animalModelList}" var="animal">
								<option value="${animal.id}">${animal.sisbov}</option>
							</c:forEach>
					</select></td>
				</tr>

				<tr>
					<td><label for="situacao">Situacao:</label></td>
					<td><input id="situacao" type="text" name="situacao.situacao" />
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