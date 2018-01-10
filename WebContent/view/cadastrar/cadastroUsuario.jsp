<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="view/js/mascara.js"></script>
<script type="text/javascript" src="view/js/cadastroMain.js"></script>
<link rel="stylesheet" type="text/css"	href="view/css/cadastroStyle.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Usuario</title>
</head>
<body>
	<div style="text-align: center; color: red;"> ${msg} </div>
	<h2>Cadastro Usuário</h2>
	
<form action="cadastroComSucessoUsuario" method="post">
	<fieldset>
		<legend>Dados Usuário</legend>
		
		<label>Nome:</label>
		<input type="text" name="nome" id="nome"> <br>
		
		<label>Telefone:</label>
		<input type="text" name="telefone" id="telefone" onkeyup="maskIt(this,event,'(##) #####-####')"> <br>
		
		<label>Número do Documento de Identificação:</label> 
		<input type="text" name="rg" id="rg"> <br>
		
		<label>Número do CPF:</label> 
		<input type="text" name="cpf" id="cpf" onkeyup="maskIt(this,event,'###.###.###-##')"> <br>
		
		<label>E-mail:</label> 
		<input type="email" name="email" id="email"> <br>
		
	</fieldset>
	<fieldset>
		<legend>Dados Adicionais </legend>
		
		<label>Tipo de Usuario:</label>
			<select name="tipoUsuario" id="tipoUsuario" class="form-control"
				style="width: 300px;">
				<option value="">Selecione</option>
				<c:forEach items="${listaTipoUsuario}" var="obj">
					<option value="${obj.id}">${obj.descricao}</option>
				</c:forEach>
			</select> <br>
		
		<label>Login:</label>
		<input type="text" name="login" id="login"> <br>
		
		<label>Senha:</label>
		<input type="password" name="senha" id="senha"> <br>
		
		<label>Link do Currículo na Plataforma Lattes:</label>
		<input type="text" name="curriculo" id="curriculo"> <br>
		
		<label>Campus:</label> <select name="campus" id="campus" class="form-control"
				style="width: 300px;">
				<option value="">Selecione</option>
				<c:forEach items="${listaCampus}" var="obj2">
					<option value="${obj2.id}">${obj2.nome}</option>
				</c:forEach>
			</select> <br>
			
			
	</fieldset>
	
	<input type="submit" value="Cadastrar">
	<input type="reset" value="Limpar">
</form>
</body>
</html>