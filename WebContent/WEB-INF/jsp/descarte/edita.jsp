<body>

<form action="altera" class="exampleform" method="post">
		<fieldset>
			<legend>Editar descarte</legend>
			
			<input type="text" name="descarteModel.id" value="${descarteModel.id}" /> 
			<label for="funcionario">funcionario:</label> 
			<input id="funcionario" type="text" name="descarteModel.funcionario" value="${descarteModel.funcionario}" /> 
			
			<label for="motivo">motivo:</label>
			<input id="motivo" type="text" name="descarteModel.motivo" value="${descarteModel.motivo}"></input>
			
			
			<label for="animal">animal:</label>
			<input id="animal" type="text" name="descarteModel.animal" value="${descarteModel.animal}" />
			
			<label for="detalheDaMorte">raça:</label>
			<input id="detalheDaMorte" type="text" name="descarteModel.detalheDaMorte" value="${descarteModel.detalheDaMorte}" />
			
			<label for="fazenda">fazenda:</label>
			<input id="fazenda" type="text" name="descarteModel.fazenda" value="${descarteModel.fazenda}" />
			
			<label for="rebanho">rebanho:</label>
			<input id="rebanho" type="text" name="descarteModel.rebanho" value="${descarteModel.rebanho}" />
			

			
			<button type="submit">Enviar</button>
		</fieldset>
	</form>

</body>
</html>