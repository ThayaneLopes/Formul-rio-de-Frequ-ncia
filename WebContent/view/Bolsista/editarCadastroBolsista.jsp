<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="view/js/mascara.js"></script>
<link rel="stylesheet" type="text/css"	href="view/css/cadastroStyle.css" />
<script type="text/javascript" src="view/js/main.js" ></script>
<link rel="stylesheet" type="text/css" href="view/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="view/bootstrap/js/bootstrap.min.js"></script>
<title>Alterar Dados Bolsista</title>
</head>
<body >
<c:import url="../usuario/menuOrientador.jsp"/>


<div class="menu">
<hr><h3>Alterar Dados Bolsista</h3><hr>
	<form action="alterarCadastroBolsista" method="post" class="form" id="form_cadastro">
		<fieldset>
		<br>
			<legend><i><b>Dados Pessoais</b></i></legend>
			
			<label>Nome Completo:</label> 
			<input type="text" name="nome" id="nome" class="form-control" required="required" value="${bolsista.nome}"> <br> 
			<label>Telefone:</label> 
			<input	type="text" name="telefone" id="telefone" onkeyup="maskIt(this,event,'(##) #####-####')" class="form-control" required="required" value="${bolsista.telefone}"><br> 
			<label>E-mail:</label>
			<input type="text" name="email" id="email" class="form-control" required="required" value="${bolsista.email}"><br> 
			<label>Número do Documento de Identificação:</label> 
			<input type="text" name="rg" id="rg" class="form-control" required="required" value="${bolsista.rg}"><br>
			<label>CPF:</label> 
			<input type="text" name="cpf" id="cpf"	onkeyup="maskIt(this,event,'###.###.###-##')" class="form-control" required="required" value="${bolsista.cpf}"><br>
		</fieldset>
		<fieldset>
		<br>
			<legend><i><b>Dados Bancários</b></i></legend>

			<label>Banco</label> 
			<input type="text" name="banco" id="banco" class="form-control" required="required" value="${bolsista.banco}"><br>
			<label>Agência:</label> 
			<input type="text" name="agencia"	id="agencia" onkeyup="maskIt(this,event,' ####-###')" class="form-control" required="required" value="${bolsista.agencia}"><br>
			<label>Conta:</label> 
			<input type="text" name="conta" id="conta" onkeyup="maskIt(this,event,'######-#')" class="form-control" required="required" value="${bolsista.conta}"> <br>
		</fieldset>
		<fieldset>
		<br>
			<legend><i><b>Dados Escolar</b></i></legend>
			
			
			
			<label>Campus:</label> 
			<select name="campus" class="form-control"	style="width: 300px;" class="form-control" required="required">
			<c:forEach items="${listaCampus}" var="obj">
				<c:choose>
					<c:when test="${bolsista.campus.id == obj.id}">
						<option value="${obj.id}" selected>${obj.nome}</option>
					</c:when>
					<c:otherwise>
						<option value="${obj.id}">${obj.nome}</option>
					</c:otherwise>
				</c:choose>

			</c:forEach>
		</Select>  <br> 
			
			<label>Matrícula:</label> 
			<input type="text"	name="matricula" id="matricula" class="form-control"  required="required" value="${bolsista.matricula}"><br> 
			<label>Link do Currículo na Plataforma Lattes:</label> 
			<input type="text" name="curriculo" id="curriculo" class="form-control" required="required" value="${bolsista.curriculo}">
		</fieldset>
		<fieldset>
		<br>
			<legend><i> <b>Dados para o Projeto</b></i></legend>
			
			<label>Login:</label> 
			<input type="text" name="login" id="login" class="form-control" required="required" value="${bolsista.login}">	<br> 
			<label>Título do Plano de Trabalho:</label> 
			<input type="text" name="tituloPlano" id="tituloPlano" class="form-control" required="required" value="${bolsista.tituloPlano}"> <br> 
			<label for="tipoProjeto">Tipo de Projeto</label> 
			<input type="text" style="width: 500px;" class="form-control" placeholder="Para visualizar as opções apague o campo e clique uma vez sobre ele" disabled>
			<input	style="width: 300px;" class="form-control" id="tipoProjeto" name="tipoProjeto" list="tipoProjetos" value="${bolsista.tipoProjeto}" required="required">
			<datalist id="tipoProjetos">
				<option value="PIBIC GRAD IFPE">
				<option value="PIBIC GRAD CNPq">
				<option value="BIA FACEPE">
				<option value="BIA IFPE">
				<option value="PIBIC TÉCNICO">
				<option value="PIBITI TÉCNICO">
				<option value="PIBITI GRAD IFPE">
				<option value="PIBITI GRAD CNPq">
				<option value="PIBIC AF IFPE">
				<option value="PIBIC AF CNPq">
				<option value="IC VOLUNTÁRIO">
			</datalist>
			<br>

		</fieldset>



		<input type="submit" class="btn btn-primary" value="Alterar"> 
		<input type="reset" class="btn btn-default" value="Limpar">
		
	</form>
	<script src="view/js/mascara.js"></script>
		
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