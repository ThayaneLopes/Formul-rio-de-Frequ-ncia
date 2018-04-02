<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="view/js/mascara.js"></script>
<link rel="stylesheet" type="text/css"	href="view/css/cadastroStyle.css" />
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preenchimento Formulário de Frequencia</title>
</head>
<body>

<c:import url="../Bolsista/menuBolsista.jsp"/>

<div class="menu">
 
	<form method="post" action="formularioBolsistaComSucesso" id="form_cadastro">
	<div style="text-align: center; color: red;">${msg}</div>
	
	<h2> Formulário do Mês </h2>
	
		<label>Mês e Ano</label>
		<input type="text" name="mesAno" onkeyup="maskIt(this,event,'##/####')" class="form-control" placeholder="Ex.:01/2018">
		

		<input type="hidden"  name="bolsista" id="bolsista" value="${bolsistaLogado.id}" class="form-control" disabled>
		<input type="hidden"  name="orientador" id="orientador" value="${bolsistaLogado.orientador}" class="form-control" disabled>
		
		

	<fieldset>
	<br>
		<legend><i><b>Resumo Atividades Mensais</b></i></legend><br>
		
	<textarea rows="10" cols="60" maxlength="500" class="form-control" name="resumoAtividades" id="resumoAtividades" required="required"></textarea>
	</fieldset>
	<fieldset>
	<br>
		<legend><i><b>Comentários</b></i></legend>
		
		<label>Comentários e Dificuldades do Bolsista:</label> <br>
		<textarea rows="10" cols="100" maxlength="500" class="form-control" name="comentariosEstudante" id="comentariosEstudante"></textarea> <br>
		
	</fieldset>
	
	
	<input type="submit" value="Enviar" class="btn btn-primary"> 
	<input type="reset" value="limpar" class="btn btn-default">

	</form>
	
	 <script src="view/jq/jquery-3.2.1.min.js"></script>
       <script src="view/jq/jquery.validate.min.js"></script>
       <script src="view/js/cadastroMain.js"></script>
       <script>
             $(function(){
                    $("#form_cadastro").validate();
             });
       </script>
</div>
</html>