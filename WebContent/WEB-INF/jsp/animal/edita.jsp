<body>

<form  method="post" class="exampleform" action="<c:url  value="/animal/${animal.id}"/>" >
		<fieldset>
			<legend>Editar Animal</legend>
			
			<input id="id" type="text" name="animalModel.id" value="${animalModel.id}" /> 
			<label for="nome">Nome:</label> 
			<input id="nome" type="text" name="animalModel.nome" value="${animalModel.nome}" /> 
			
			<label for="sexo">sexo:</label>
			<input id="sexo" type="text" name="animalModel.sexo" value="${animalModel.sexo}"></input>
			
			
			<label for="nascimento">nascimento:</label>
			<input id="nascimento" type="text" name="animalModel.nascimento" value="${animalModel.nascimento}" />
			
			<label for="raca">ra�a:</label>
			<input id="raca" type="text" name="animalModel.raca" value="${animalModel.raca}" />
			
			<label for="sisbov">sisbov:</label>
			<input id="sisbov" type="text" name="animalModel.sisbov" value="${animalModel.sisbov}" />
			
			<label for="peso">peso:</label>
			<input id="peso" type="text" name="animalModel.peso" value="${animalModel.peso}" />
			
			<label for="Pai">pai:</label>
			<input id="Pai" type="text" name="animalModel.pai" value="${animalModel.pai}" />
			
			<label for="mae">mae:</label>
			<input id="mae" type="text" name="animalModel.mae" value="${animalModel.mae}" />
			
			<button type="submit" name="_method" value="PUT">Enviar</button>
		</fieldset>
	</form>

</body>
</html>