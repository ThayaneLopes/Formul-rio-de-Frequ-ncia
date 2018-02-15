<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Formulários</title>
</head>
<body>
<c:import url="../Bolsista/menuBolsista.jsp"/>


<div style="text-align: center; color: red;">${msg}</div>
<div class="menu">
<br><br>
	<table border=1; style="width: 100%" id="tabelaListaFormularioBolsista">
		<tr>
			<td>Mês e Ano</td>
			<td>Resumo de Atividades</td>
			<td>Comentários do Estudante</td>
			<td>Data Entregue</td>
			<td>Alterar</td>
			
			
		</tr>

		<c:forEach var="formularioFrequencia" items="${listaFormularioBolsista}">
			<tr>
				<td>${formularioFrequencia.mesAno}</td>
				<td>${formularioFrequencia.resumoAtividades}</td>
				<td>${formularioFrequencia.comentariosEstudante}</td>
				<td>${formularioFrequencia.dataEntrega}</td>
				
				<c:choose>
				<c:when test="${formularioFrequencia.statusBolsista == false}">
				<td><a href="exibirAlterarFormularioBolsista?id=${formularioFrequencia.id}" class="btn btn-warning">Alterar</a></td>
				</c:when>
				<c:when test="${formularioFrequencia.statusBolsista == true}">
				<td><a class="btn btn-warning" disabled>Alterar</a></td>
				</c:when>
				</c:choose>

			</tr>
		</c:forEach>

	</table>

</div>

</body>
</html>