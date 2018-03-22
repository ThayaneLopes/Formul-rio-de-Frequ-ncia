<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Usuários</title>
</head>
<body>
<c:import url="../Orientador/menuGestor.jsp"/>

<div class="menu">

	<br> 
	<a href="cadastroUsuario" class="btn btn-info">Cadastrar novo usuario</a>
<br><br>

<h3>Pesquisar Usuário</h3>
<div>
<div style="text-align: center; color: red;">${msg}</div>
<form action="buscarUsuario" method="post"  >

	<input type="text" name="busca" placeholder="Insira o nome do usuario" class="form-control">
	<input type="submit" value="Pesquisar" class="btn btn-primary">
</form>
<br>
</div>
<div>
	<table border=1; style="width: 100%" id="tabelaListaBolsista">
		<tr>
			<td>Nome</td>
			<td>Login</td>
			<td>E-mail</td>
			<td>Telefone</td>
			<td>Campus</td>
			<td>Tipo de Usuário</td>
			<td>Ações</td>
			
			
		</tr>

		<c:forEach var="usuario" items="${listaBolsista}">
			<tr>
				<td>${usuario.nome}</td>
				<td>${usuario.login}</td>
				<td>${usuario.email}</td>
				<td>${usuario.telefone}</td>
				<td>${usuario.campus.nome}</td>
				<td>${usuario.tipoUsuario.descricao}</td>
				<td>
				<a href="exibirAlterarCadastroUsuario?id=${usuario.id}" class="btn btn-warning">Alterar</a>
				<a href="removerUsuario?id=${usuario.id}" class="btn btn-danger">Remover</a>
				</td>

			</tr>
		</c:forEach>

	</table>
</div>
</div>
</body>
</html>