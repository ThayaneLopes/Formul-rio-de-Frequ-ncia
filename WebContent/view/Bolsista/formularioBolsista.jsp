<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"	href="view/css/cadastroStyle.css" />
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
  <script language="JavaScript" type="text/javascript">
            function InserirData(){
            var d=new Date();
            var monthname=new Array("01","02","03","04","05","06","07","08","09","10","11","12");
            var THISMONTH = monthname[d.getMonth()] +  "/" + d.getFullYear();
            var TODAY = d.getDate() + "/" + monthname[d.getMonth()] +  "/" + d.getFullYear();
            formBolsista.mesAno.value = THISMONTH;
            formBolsista.data_entrega.value = TODAY;
            }
        </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preenchimento Formulário de Frequencia</title>
</head>
<body onload="return InserirData();">

<c:import url="../Bolsista/menuBolsista.jsp"/>

<div class="menu">
 
	<form method="post" action="formularioBolsistaComSucesso"  name="formBolsista">
	<div style="text-align: center; color: green;">${msg}</div>
	<h2> Formulário do Mês </h2>
		<input type="hidden" name="mesAno">
		
	<fieldset>
	<br>
		<legend><i><b>Dados Usuários</b></i></legend>
		
		<label>Nome do Estudante Pesquisador:</label>
		<input type="hidden" name="bolsista" value=" ${usuarioLogado.id}">
		<input type="text" name="nome" value=" ${usuarioLogado.nome}" disabled> <br>
		<label>Matricula do Estudante Pesquisador:</label>
		<input type="text" name="matricula" value=" ${usuarioLogado.matricula}" disabled> <br>
		<label>Título do Plano de Trabalho do Bolsista:</label>
		<input type="Text" name="planoTrabalho" value=" ${usuarioLogado.tituloPlano}" disabled> <br>
		<label>Nome do Orientador:</label>
		<input type="text" name="orientador" value=" ${usuarioLogado.orientador}" disabled> <br>
		<label>Tipo de Projeto</label>
		<input type="text" name="tipoProjeto" value=" ${usuarioLogado.tipoProjeto}" disabled ><br>
		
	</fieldset>
	<fieldset>
	<br>
		<legend><i><b>Resumo Atividades Mensais</b></i></legend><br>
		
	<textarea rows="10" cols="60" maxlength="500" class="form-control" required="required"></textarea>
	</fieldset>
	<fieldset>
	<br>
		<legend><i><b>Comentários</b></i></legend>
		
		<label>Comentários e Dificuldades do Bolsista:</label> <br>
		<textarea rows="10" cols="100" maxlength="500" class="form-control" required="required"></textarea> <br>
		
	</fieldset>
	
	<input type="hidden" name="data_entrega">
	<input type="submit" value="Enviar" class="btn btn-primary"> 
	<input type="reset" value="limpar" class="btn btn-default">

	</form>
</div>
</html>