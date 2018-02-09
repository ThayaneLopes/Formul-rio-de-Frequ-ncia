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

<title>Cadastro Bolsista</title>
</head>
<body>
<c:import url="../Orientador/menuOrientador.jsp"/>
<div class="menu">
	<h2>Cadastro de Bolsista</h2><br>
	<input type="text" disabled>
	
	<div style="text-align: center; color: red;">${msg}</div>
 	<div class="form-group">
	<form action="cadastroComSucessoBolsista" method="post" class="form" id="form_cadastro">
		<fieldset>
		<br>
			<legend><i><b>Dados Pessoais</b></i></legend>
			
			<label>Nome Completo:</label> 
			<input type="text" name="nome" id="nome" class="form-control" required="required"> <br> 
			<label>Telefone:</label> 
			<input	type="text" name="telefone" id="telefone" onkeyup="maskIt(this,event,'(##) #####-####')" class="form-control" required="required"><br> 
			<label>E-mail:</label>
			<input type="text" name="email" id="email" class="form-control" required="required"><br> 
			<label>Número do Documento de Identificação:</label> 
			<input type="text" name="rg" id="rg" class="form-control" required="required"><br>
			<label>CPF:</label> 
			<input type="text" name="cpf" id="cpf"	onkeyup="maskIt(this,event,'###.###.###-##')" class="form-control" required="required"><br>
		</fieldset>
		<fieldset>
		<br>
			<legend><i><b>Dados Bancários</b></i></legend>

			<label>Banco</label> 
			<input type="text" name="banco" id="banco" class="form-control" required="required"><br>
			<label>Agência:</label> 
			<input type="text" name="agencia"	id="agencia" onkeyup="maskIt(this,event,'####-###')" class="form-control" required="required"><br>
			<label>Conta:</label> 
			<input type="text" name="conta" id="conta" onkeyup="maskIt(this,event,'######-#')" class="form-control" required="required"> <br>
		</fieldset>
		<fieldset>
		<br>
			<legend><i><b>Dados Escolar</b></i></legend>
			
			<label>Campus:</label> 
			<select name="campus" class="form-control"	style="width: 300px;" class="form-control" required="required">
				<option value="">Selecione</option>
				<c:forEach items="${listaCampus}" var="obj">
					<option value="${obj.id}">${obj.nome}</option>
				</c:forEach>
			</select> <br> 
			
			<label>Matrícula:</label> 
			<input type="text"	name="matricula" id="matricula" class="form-control"  required="required"><br> 
			<label>Histórico Escolar:</label> 
			<input type="file" name="historicoEscolar"	id="historicoEscolar" class="form-control"><br> 
			<label>Link do Currículo na Plataforma Lattes:</label> 
			<input type="text" name="curriculo" id="curriculo" class="form-control" required="required">
		</fieldset>
		<fieldset>
		<br>
			<legend><i> <b>Dados para o Projeto</b></i></legend>
			
			<label>Orientador</label>
			<select name="orientador" class="form-control" style="width: 300px;" class="form-control" required="required">
				<option value="">Selecione</option>
				<c:forEach items="${listaUsuario}" var="obj">
					<option value="${obj.id}">${obj.nome}</option>
				</c:forEach>
			</select> <br>
			
			<label>Login:</label> 
			<input type="text" name="login" id="login" class="form-control" required="required">	<br> 
			<label>Senha Inicial de Acesso:</label> 
			<input type="password" name="senha" id="senha" class="form-control" required="required"><br> 
			<label>Título do Plano de Trabalho:</label> 
			<input type="text" name="tituloPlano" id="tituloPlano" class="form-control" required="required"> <br> 
			<label for="tipoProjeto">Tipo de Projeto</label> 
			<select name="tipoProjeto" id="tipoProjeto" class="form-control" required="required">
				<option>Selecione o Tipo</option>
				<option value="PIBIC GRAD IFPE">PIBIC GRAD IFPE</option>
				<option value="PIBIC GRAD CNPq">PIBIC GRAD CNPq</option>
				<option value="BIA FACEPE">BIA FACEPE</option>
				<option value="BIA IFPE">BIA IFPE</option>
				<option value="PIBIC TÉCNICO">PIBIC TÉCNICO</option>
				<option value="PIBITI TÉCNICO">PIBITI TÉCNICO</option>
				<option value="PIBITI GRAD IFPE">PIBITI GRAD IFPE</option>
				<option value="PIBITI GRAD CNPq">PIBITI GRAD CNPq</option>
				<option value="PIBIC AF IFPE">PIBIC AF IFPE</option>
				<option value="PIBIC AF CNPq">PIBIC AF CNPq</option>
				<option value="IC VOLUNTÁRIO">IC VOLUNTÁRIO</option>
			</select><br>

		</fieldset>


		<input type="submit" class="btn btn-primary" value="Cadastrar"> 
		<input type="reset" class="btn btn-default" value="Limpar">
		
	</form>
	</div>
	<script src="view/js/mascara.js"></script>
		<script>
		function validar(dom, tipo) {
			switch (tipo) {
			case 'num':
				var regex = /[A-Za-z]/g;
				break;
			case 'text':
				var regex = /\d/g;
				break;
			}
			dom.value = dom.value.replace(regex, '');
		}
		
		
	</script>
		<script src="view/jq/jquery-3.2.1.min.js"></script>
		<script src="view/jq/jquery.validate.min.js"></script>
		<script src="view/js/cadastroMain.js"></script>
		<script>
			$(function() {
				$("#form_cadastro").validate();
			});
		</script>




	</div>
</body>
</html>