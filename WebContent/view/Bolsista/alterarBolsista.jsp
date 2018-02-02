<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="view/js/mascara.js"></script>
<link rel="stylesheet" type="text/css"	href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js" ></script>
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alterar Senha</title>
</head>
<body>

<c:import url="../Bolsista/menuBolsista.jsp"/>
<div class="menu">
<hr><h3>Alterar Senha</h3><hr>
<div style="text-align: center; color: blue;">${msg}</div>
<form action="alterarBolsista" method="post" id="form">

<input type="hidden" name="id" value="${usuarioLogado.id}" />
<label>Senha:</label>
<input type="password" name="senha" id="senha" class="form-control" placeholder="Insira a Sua senha" minlength="8" required><br>


<input type="submit" class="btn btn-primary" value="Atualizar">
</div>


</form>
</div>
</body>
</html>