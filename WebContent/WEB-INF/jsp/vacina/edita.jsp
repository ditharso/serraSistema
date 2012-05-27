<body>

<form action="altera" class="exampleform" method="post">
		<fieldset>
			<legend>Editar Animal</legend>
			
			<input type="text" name="vacinaModel.id" value="${vacinaModel.id}" /> 
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="vacinaModel.nome" value="${vacinaModel.nome}" /> 
			
			<label for="fabricante">fabricante:</label>
			<input id="fabricante" type="text" name="vacinaModel.fabricante" value="${vacinaModel.fabricante}"></input>
			
			
			<label for="validade">validade:</label>
			<input id="validade" type="text" name="vacinaModel.validade" value="${vacinaModel.validade}" />
			
			<label for="dosagem">dosagem:</label>
			<input id="dosagem" type="text" name="vacinaModel.dosagem" value="${vacinaModel.dosagem}" />
			
			<label for="tipo">tipo:</label>
			<input id="tipo" type="text" name="vacinaModel.tipo" value="${vacinaModel.tipo}" />
			
			<label for="local">local:</label>
			<input id="local" type="text" name="vacinaModel.local" value="${vacinaModel.local}" />
			
			<label for="contraIndicacao">contraIndicacao:</label>
			<input id="contraIndicacao" type="text" name="vacinaModel.contraIndicacao" value="${vacinaModel.contraIndicacao}" />

			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>