<body>

<form  method="post" class="exampleform" action="<c:url  value="/situacao/${situacao.id}"/>" >
		<fieldset>
			<legend>Editar Animal</legend>
			
			<input id="id" type="hidden" name="situacaoModel.id" value="${situacaoModel.id}" /> 
			
			<label for="animal">animal:</label> 
			<input id="animal" type="text" name="situacaoModel.animal.id" value="${situacaoModel.animal.id}" /> 
			
			<label for="situacao">situaca:</label>
			<input id="situacao" type="text" name="situacaoModel.situacao" value="${situacaoModel.situacao}"></input>
			
			
			

			
			<button type="submit" name="_method" value="PUT">Enviar</button>
		</fieldset>
	</form>

</body>
</html>