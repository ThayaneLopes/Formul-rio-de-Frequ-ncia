<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"	href="view/css/cadastroStyle.css" />
<title>Alterar Senha</title>
</head>
<body>

<c:import url="../Bolsista/menuBolsista.jsp"/>
<hr><h3>Alterar Senha</h3><hr>

<form action="alterarBolsista" method="post">
<div class="menu">
<input type="hidden" name="id" value="${usuarioLogado.id}" />
<label>Senha:</label>
<input type="password" name="senha" id="senha" value="${usuarioLogado.senha}"><br>
<input type="submit" value="Atualizar">
</div>





</form>

</body>
</html>