<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Bolsistas</title>
</head>
<body>
<c:import url="../Orientador/menuOrientador.jsp"/>

<div class="menu">

	<br> 
	<a href="cadastroBolsista" class="btn btn-info">Cadastrar novo bolsista</a>
<br><br>

<h3>Pesquisar Bolsista</h3>
<div>
<div style="text-align: center; color: red;">${msg}</div>
<form action="buscarBolsista" method="post"  >

	<input type="text" name="busca" placeholder="Insira o nome do estudante" class="form-control">
	<input type="submit" value="Pesquisar" class="btn btn-primary">
</form>
<br>
</div>
<div>
	<table border=1; style="width: 100%" id="tabelaListaBolsista">
		<tr>
			<td>Nome</td>
			<td>Matrícula</td>
			<td>Login</td>
			<td>Título do Plano</td>
			<td>Historico</td>
			<td>Tipo de Projeto</td>
			<td>E-mail</td>
			<td>Telefone</td>
			<td>Campus</td>
			<td>Alterar</td>
			<td>Remover</td>
			
			
		</tr>

		<c:forEach var="bolsista" items="${listaBolsista}">
			<tr>
				<td>${bolsista.nome}</td>
				<td>${bolsista.matricula}</td>
				<td>${bolsista.login}</td>
				<td>${bolsista.tituloPlano}</td>
				<td>${bolsista.historicoEscolar}</td>
				<td>${bolsista.tipoProjeto}</td>
				<td>${bolsista.email}</td>
				<td>${bolsista.telefone}</td>
				<td>${bolsista.campus.nome}</td>
				<td><a href="exibirAlterarCadastroBolsista?id=${bolsista.id}" class="btn btn-warning">Alterar</a></td>
				<td><a href="removerBolsista?id=${bolsista.id}" class="btn btn-danger">Remover</a></td>

			</tr>
		</c:forEach>

	</table>
</div>
</div>
</body>
</html>