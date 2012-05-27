<body>



	<form id="animalForm" class="exampleform" action="<c:url value="/animal"/>" method="post">

		<h3 id="summary"></h3>
		<fieldset>
			<legend>Adicionar Animal</legend>
			
			<label for="nome">Nome:</label> 
			
			<input id="nome" type="text" name="animal.nome" value="${animal.nome}"/> 
			<br/>
			<label for="sexo">sexo:</label>
			
			<input id="sexo" type="text" name="animal.sexo" value="${animal.sexo}"/>
			<br/>
			<label for="nascimento">nascimento:</label> 
			
			<input id="nascimento" type="text" name="animal.nascimento" value="${animal.nascimento}"/>
			<br/>
			<label for="raca">Raça:</label> 
			
			<input id="raca" type="text" name="animal.raca" value="${animal.raca}"/>
			<br/>
			<label for="sisbov">SISBOV:</label> 
			
			<input id="sisbov" type="text" name="animal.sisbov" value="${animal.sisbov}"/>
			<br/>
			<label for="peso">Peso:</label> 
			
			<input id="peso" type="text" name="animal.peso" value="${animal.peso}"/>
			<br/>
			<label for="pai">Pai:</label> 
			
			<input id="pai" type="text" name="animal.pai" value="${animal.pai}"/>
			<br/>
			<label for="mae">Mãe:</label> 
			
			<input id="pai" type="text" name="animal.mae" value="${animal.pai}"/>

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>
	


</body>
</html>