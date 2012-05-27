<body>
<div id="erros">
       <ul>
           <c:forEach items="${errors}" var="error">
               <li>${error.category } - ${error.message }</li>
           </c:forEach>
       </ul>
</div>

	<form action="adiciona" class="exampleform" method="post">


		<fieldset>
			<legend>Adicionar Pessoa</legend>
			
			<label for="nome">Nome:</label> 
			
			<input id="nome" type="text" name="pessoa.nome" value="${pessoa.nome}"/> 
			
			<label for="cpf">cpf:</label>
			
			<input id="cpf" type="text" name="pessoa.cpf" value="${pessoa.cpf}"/>
			
			<label for="idade">idade:</label> 
			
			<input id="idade" type="text" name="pessoa.idade" value="${pessoa.idade}"/>
			
			<button type="submit">Enviar</button>
		</fieldset>


	</form>

</body>
</html>