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
<title>Cadastro Tipo de Usuário</title>
</head>
<body>
<c:import url="../propesq/menuPropesq.jsp"/>

<div class="menu">


<h2>Cadastrar Tipo de Usuario</h2>

<form action="cadastroComSucessoTipoUsuario" method="post">
<div style="text-align: center; color: red;">${msg}</div>

<label> Descrição:</label>
<input type="text" id="descricao" name="descricao" placeholder="Ex.: Gestor" class="form-control"> <br>

<input type="submit" class="btn btn-primary" value="Cadastrar"> 
<input type="reset" class="btn btn-default" value="Limpar">

</form>
</div>
</body>
</html>