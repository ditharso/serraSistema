<body>

	<form id="situacaoForm" class="exampleform" action="<c:url value="/situacao"/>" method="post">

		<fieldset>
			<legend>Adicionar Animal</legend>
			
			<label for="animal">Animal:</label> 
			
			
			<br/>
			<!-- <input  type="text" name="situacao.animal.id" value="${situacao.animal.id}"/>  -->
			
			<select id="animal" name="situacao.animal.id">
			<c:forEach items="${animalModelList}" var="animal">
			<option  value="${animal.id}">${animal.nome}</option>
			</c:forEach>
			</select>
			
			<label for="situacao">Situacao:</label>
			
			<input id="situacao" type="text" name="situacao.situacao" />
			<br/>

			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>
	


</body>
</html>