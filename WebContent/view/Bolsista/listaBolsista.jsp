<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="view/css/style.css" />
<script type="text/javascript" src="view/js/main.js"></script>
<link rel="stylesheet" type="text/css"
	href="view/Bolsista/menuBolsista.css">
<link rel="stylesheet" type="text/css"
	href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Bolsistas</title>
</head>
<body>
<c:import url="../Orientador/menuOrientador.jsp"/>

<div class="menu">
	<a href="cadastroBolsista">Cadastrar novo bolsista</a>

	<table border="1" style="width: 100%" id="tabelaListaBolsista">
		<tr>
			<td>Nome</td>
			<td>Matrícula</td>
			<td>Login</td>
			<td>Título do Plano</td>
			<td>Tipo de Projeto</td>
			<td>E-mail</td>
			<td>Telefone</td>
			<td>Campus</td>
			<td>Remover</td>
			
			
		</tr>

		<c:forEach var="bolsista" items="${listaBolsista}">
			<tr>
				<td>${bolsista.nome}</td>
				<td>${bolsista.matricula}</td>
				<td>${bolsista.login}</td>
				<td>${bolsista.tituloPlano}</td>
				<td>${bolsista.tipoProjeto}</td>
				<td>${bolsista.email}</td>
				<td>${bolsista.telefone}</td>
				<td>${bolsista.campus.nome}</td>
				<td><a href="removerBolsista?id=${bolsista.id}">Remover</a></td>

			</tr>
		</c:forEach>

	</table>
</div>
</body>
</html>