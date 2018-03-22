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
<title>Alterar Cadastro de Usuario</title>
</head>
<body>
<c:import url="../propesq/menuPropesq.jsp"/>
<div class="menu">
	<h2>Alterar Cadastro Usuário</h2>
	
<form action="alterarCadastroUsuario" method="post" id="form_cadastro">
<div style="text-align: center; color: red;"> ${msg} </div>

	<fieldset>
		<legend>Dados Usuário</legend>
		
		<label>Nome:</label>
		<input type="text" name="nome" id="nome" class="form-control" value="${usuario.nome}"> <br>
		
		<label>Telefone:</label>
		<input type="text" name="telefone" id="telefone" onkeyup="maskIt(this,event,'(##) #####-####')" class="form-control" value="${usuario.telefone}"> <br>
		
		<label>Número do Documento de Identificação:</label> 
		<input type="text" name="rg" id="rg" class="form-control" value="${usuario.rg}"> <br>
		
		<label>Número do CPF:</label> 
		<input type="text" name="cpf" id="cpf" onkeyup="maskIt(this,event,'###.###.###-##')" class="form-control" value="${usuario.cpf}"> <br>
		
		<label>E-mail:</label> 
		<input type="email" name="email" id="email" class="form-control" value="${usuario.email}"> <br>
		
	</fieldset>
	<fieldset>
		<legend>Dados Adicionais </legend>
		
		<label>Tipo de Usuario:</label>
			<select name="tipoUsuario" id="tipoUsuario" class="form-control" style="width: 300px;">
				<c:forEach items="${listaTipoUsuario}" var="obj">
				<c:choose>
					<c:when test="${usuario.tipoUsuario.id == obj.id}">
					<option value="${obj.id}">${obj.descricao}</option>
					</c:when>
					<c:otherwise>
					<option value="${obj.id}">${obj.descricao}</option>
					</c:otherwise>
				</c:choose>
				</c:forEach>
			</select> <br>
		
		<label>Login:</label>
		<input type="text" name="login" id="login" class="form-control" value="${usuario.login}"> <br>
		
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
			
			
	</fieldset>
	
	<input type="submit" class="btn btn-primary" value="Cadastrar"> 
		<input type="reset" class="btn btn-default" value="Limpar">
</form>
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