<body>

<form action="altera" class="exampleform" method="post">
		<fieldset>
			<legend>Editar rebanho</legend>
			
			<input type="text" name="rebanhoModel.id" value="${rebanhoModel.id}" /> 
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="rebanhoModel.nome" value="${rebanhoModel.nome}" /> 
			
			<label for="numero">numero:</label>
			<input id="numero" type="text" name="rebanhoModel.numero" value="${rebanhoModel.numero}"></input>
			
			
			<label for="tipo">tipo:</label>
			<input id="tipo" type="text" name="rebanhoModel.tipo" value="${rebanhoModel.tipo}" />
			
			

			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>