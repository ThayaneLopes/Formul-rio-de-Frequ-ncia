<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Cadastro Usuário</h2>

	<fieldset>
		<legend>Dados Usuário</legend>
		<label>Nome:</label>
		<input type="text" name="nome" id="nome"> <br>
		<label>Telefone:</label>
		<input type="text" name="telefone" id="telefone"> <br>
		<label>Número do Documento de Identificação:</label> 
		<input type="text" name="rg" id="rg"> <br>
		<label>Número do CPF:</label> 
		<input type="text" name="cpf" id="cpf"> <br>
		<label>E-mail:</label> 
		<input type="text" name="email" id="email"> <br>
	</fieldset>
	<fieldset>
		<legend>Dados Adicionais </legend>
		<label>Tipo de Usuario:</label>
			<select name="tipo_usuario" > 
					<option value=""> Selecione </option> 
					<c:forEach items="${listaTipoUsuario}" var="obj"> 
					<option value="${obj.id}"> ${obj.descricao} </option> 
				</c:forEach> 
			</select><br>
		<label>Login:</label>
		<input type="text" name="login" id="login"> <br>
		<label>Senha:</label>
		<input type="text" name="senha" id="senha"> <br>
		<label>Confirmar Senha:</label>
		<input type="text" name="senha" id="senha"> <br>
		<label>Link do Currículo na Plataforma Lattes:</label>
		<input type="text" name="curriculo" id="curriculo"> <br>
		<label>Campus:</label>
				<select name="campus" > 
					<option value=""> Selecione </option> 
					<c:forEach items="${listaCampus}" var="obj"> 
					<option value="${obj.id}"> ${obj.nome} </option> 
				</c:forEach> 
			</select><br>
	</fieldset>
	<input type="submit" value="Cadastrar">
	<input type="reset" value="Limpar">

</body>
</html>