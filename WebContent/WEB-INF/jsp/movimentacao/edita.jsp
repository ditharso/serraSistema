<body>

<form action="altera" class="exampleform" method="post">
		<fieldset>
			<legend>Editar movimentacao</legend>
			
			<input type="text" name="movimentacaoModel.id" value="${movimentacaoModel.id}" /> 
			<label for="fazenda">fazenda:</label> 
			<input id="fazenda" type="text" name="movimentacaoModel.fazenda" value="${movimentacaoModel.fazenda}" /> 
			
			<label for="numeroDoCurral">numeroDoCurral:</label>
			<input id="numeroDoCurral" type="text" name="movimentacaoModel.numeroDoCurral" value="${movimentacaoModel.numeroDoCurral}"></input>
			
			
			<label for="rebanho">rebanho:</label>
			<input id="rebanho" type="text" name="movimentacaoModel.rebanho" value="${movimentacaoModel.rebanho}" />
			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>