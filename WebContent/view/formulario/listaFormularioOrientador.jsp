<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Formulários</title>
</head>
<body>
	<c:import url="../usuario/menuOrientador.jsp" />

<input type="hidden"  name="id"  value="${formularioFrequencia.id}" class="form-control" >
	<div style="text-align: center; color: red;">${msg}</div>
	<div class="menu">
		<br> <br>
		<table border=1; style="width: 100%"
			id="tabelaListaFormularioOrientador">
			<tr>
				<td>Mês e Ano</td>
				<td>Nome do Estudante</td>
				<td>Data de Envio</td>
				<td>Ações</td>


			</tr>

			<c:forEach var="formularioFrequencia"
				items="${listaFormularioUsuario}">
				<tr>
					<td>${formularioFrequencia.mesAno}</td>
					<td>${formularioFrequencia.bolsista.nome}</td>
					<td>${formularioFrequencia.dataEntrega}</td>

					<c:choose>
						<c:when test="${formularioFrequencia.statusOrientador == false}">
							<td>
								<a href="EnviarAoGestor?id=${formularioFrequencia.id}"	class="btn btn-info">Enviar ao Gestor</a>
								<a href="exibirIncluirFormularioOrientador?id=${formularioFrequencia.id}" class="btn btn-warning">Alterar</a>
							</td>
						</c:when>
						<c:when test="${formularioFrequencia.statusOrientador == true}">
							<td><a class="btn btn-info" disabled>Enviado ao
									Gestor</a><a class="btn btn-warning" disabled>Alterar</a></td>
						</c:when>
					</c:choose>

				</tr>
			</c:forEach>

		</table>

	</div>

</body>
</html>