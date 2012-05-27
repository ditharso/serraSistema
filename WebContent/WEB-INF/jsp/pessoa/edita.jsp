<body>

<form action="altera" class="exampleform" method="post">
		<fieldset>
			<legend>Editar pessoa</legend>
			<input type="text" name="pessoaModel.id" value="${pessoaModel.id}" /> <label
				for="nome">Nome:</label> <input id="nome" type="text"
				name="pessoaModel.nome" value="${pessoaModel.nome}" /> <label
				for="cpf">Descrição:</label>
			<textarea id="cpf" name="pessoaModel.cpf">${pessoaModel.cpf}</textarea>
			<label for="idade">Preço:</label> <input id="idade" type="text"
				name="pessoaModel.idade" value="${pessoaModel.idade}" />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
	testando o git

</body>
</html>