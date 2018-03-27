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
<meta charset="UTF-8">
<title>Enviar Formulário</title>
</head>
<body>

<c:import url="../usuario/menuOrientador.jsp"/>

<div class="menu">


<form action="incluirFormularioOrientador" method="post" name="form_cadastro">

	<h2> Formulário do Mês </h2>
	<fieldset>
		<legend>Preenchimento do Bolsista</legend>
		<label>Mês e Ano</label>
		<input type="text" name="mesAno" onkeyup="maskIt(this,event,'##/####')" class="form-control" placeholder="Ex.:01/2018" value="${formularioFrequencia.mesAno}" disabled="disabled">
		
		<input type="hidden"  name="id"  value="${formularioFrequencia.id}" class="form-control" >
		

	
	<br>
		<legend><i><b>Resumo Atividades Mensais</b></i></legend><br>
		
	<textarea rows="10" cols="60" maxlength="500" class="form-control" name="resumoAtividades" id="resumoAtividades" required="required" disabled="disabled">${formularioFrequencia.resumoAtividades}</textarea>
	<br>
		<legend><i><b>Comentários</b></i></legend>
		
		<label>Comentários e Dificuldades do Bolsista:</label> <br>
		<textarea rows="10" cols="100" maxlength="500" class="form-control" name="comentariosEstudante" id="comentariosEstudante" disabled="disabled" >${formularioFrequencia.comentariosEstudante}</textarea> <br>
		
	</fieldset>
	<fieldset>
		<legend>Preenchimento do Orientador</legend>
		<fieldset>
			<label>Situação do Cronograma</label>
				<input type="radio" name="situacaoCronograma" class="form-control" value="Atividade mensais realizadas de acordo com cronograma proposto">Atividade mensais realizadas de acordo com cronograma proposto
				<input type="radio" name="situacaoCronograma" class="form-control" value="Cronograma adiantado">Cronograma adiantado
				<input type="radio" name="situacaoCronograma" class="form-control" value="Cronograma atrasado">Cronograma atrasado
				<input type="radio" name="situacaoCronograma" class="form-control" value="Concluído">Concluído
			<label>Justificativa</label>
			<textarea rows="10" cols="100" maxlength="500" class="form-control" name="justificativa" id="justificativa" ></textarea> <br>
		</fieldset>
		<fieldset>
			<label>Cumprimento da Carga Horária</label>
				<input type="radio" name="cargaHoraria" class="form-control" value="Ruim">Ruim
				<input type="radio" name="cargaHoraria" class="form-control" value="Regular">Regular
				<input type="radio" name="cargaHoraria" class="form-control" value="Bom">Bom
				<input type="radio" name="cargaHoraria" class="form-control" value="Ótimo">Ótimo
			<label>Interesse nas Atividade de pesquisa</label>
				<input type="radio" name="interesseAtividades" class="form-control" value="Ruim">Ruim
				<input type="radio" name="interesseAtividades" class="form-control" value="Regular">Regular
				<input type="radio" name="interesseAtividades" class="form-control" value="Bom">Bom
				<input type="radio" name="interesseAtividades" class="form-control" value="Ótimo">Ótimo
			<label>Progresso alcançado</label>
				<input type="radio" name="progressoAlcancado" class="form-control" value="Ruim">Ruim
				<input type="radio" name="progressoAlcancado" class="form-control" value="Regular">Regular
				<input type="radio" name="progressoAlcancado" class="form-control" value="Bom">Bom
				<input type="radio" name="progressoAlcancado" class="form-control" value="Ótimo">Ótimo
				
		<label>Pagamento da Bolsa</label>
				<input type="radio" name="progressoAlcancado" class="form-control" value="true">Sim
				<input type="radio" name="progressoAlcancado" class="form-control" value="false">Não
		</fieldset>
		<label>Comentários e Dificuldades do Orientador:</label> <br>
		<textarea rows="10" cols="100" maxlength="500" class="form-control" name="comentariosOrientador" id="comentariosOrientador" ></textarea> <br>
		
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


</body>
</html>