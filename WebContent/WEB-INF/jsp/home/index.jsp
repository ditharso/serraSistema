<div align="center">
<c:if test="${usuarioWeb.logado}">
Olá, ${usuarioWeb.nome }! <a href="<c:url value="/logout"/>">Logout</a>
</c:if>
<c:if test="${empty usuarioWeb or not usuarioWeb.logado}">
Você não está logado. <a href="<c:url value="/login"/>">Login</a>
	<a href="<c:url value="/usuarios/novo"/>">Cadastre-se</a>
</c:if>
</div>

<div align="center">
<img src="../images/serra.png" width="80%" height="50%"></img>

</div>