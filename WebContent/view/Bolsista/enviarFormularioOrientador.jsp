<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import = "org.springframework.ui.Model" %>
<%@	page import = " com.br.propesq.frequencia.model.FormularioFrequencia" %>
<%@ page import= " com.br.propesq.frequencia.dao.FormularioFrequenciaDao "%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Formul�rios</title>
</head>
<body>
<c:import url="../Bolsista/menuBolsista.jsp"/>

<div class="menu">


<br><br>
	<table border=1; style="width: 100%" id="tabelaListaFormularioBolsista">
		<tr>
			<td>M�s e Ano</td>
			<td>Resumo de Atividades</td>
			<td>Coment�rios do Estudante</td>
			<td>Data Entregue</td>
			<td>Status</td>
			<td>A��es</td>
			
			
		</tr>

		<c:forEach var="formularioFrequencia" items="${listaFormularioBolsista}">
			<tr>
				<td>${formularioFrequencia.mesAno}</td>
				<td>${formularioFrequencia.resumoAtividades}</td>
				<td>${formularioFrequencia.comentariosEstudante}</td>
				<td>${formularioFrequencia.dataEntrega}</td>
				<td>${formularioFrequencia.statusBolsista}</td>
				<td><a href="EnviarAoOrientador?id=${formularioFrequencia.id}" class="btn btn-info">Enviar ao Orientador</a></td>
			</tr>
		</c:forEach>

	</table>

</div>

</body>
</html>